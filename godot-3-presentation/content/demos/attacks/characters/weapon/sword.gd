extends Area2D

signal attack_finished

enum STATES { IDLE, ATTACK }
var state = null

# Registering input before the attack ends
# Also common in platform games or for jump mechanics.
# You register the next jump before the character hits the ground
enum ATTACK_INPUT_STATES { IDLE, LISTENING, REGISTERED }
var attack_input_state = IDLE
var ready_for_next_attack = false
# The combo is hard-coded in each weapon
# Unless the weapon has more than 2 or 3,
# or if you're working with a designer who needs
# to create dozens of weapons, this works well
const MAX_COMBO_COUNT = 3
var combo_count = 0

var attack_current = {}
# Using a dict for each attack, we can add new, per-attack property
# E.g. ignore_armor: true, inflicts: POISON, element: FIRE...
# You can convert this to and from JSON so it's easy
# to move it outside the code without breaking it
var combo = [{
		'damage': 1,
		'animation': 'attack_fast',
		'effect': null
	},
	{
		'damage': 1,
		'animation': 'attack_fast',
		'effect': [GlobalConstants.STATUS_POISONED, 2]
	},
	{
		'damage': 3,
		'animation': 'attack_medium',
		'effect': null
	}]

var hit_objects = []


func _ready():
	$AnimationPlayer.connect('animation_finished', self, "_on_animation_finished")
	self.connect("body_entered", self, "_on_body_entered")
	_change_state(IDLE)


func _change_state(new_state):
	match state:
		ATTACK:
			hit_objects = []
			attack_input_state = IDLE
			ready_for_next_attack = false

	match new_state:
		IDLE:
			combo_count = 0
			$AnimationPlayer.play('idle')
			monitoring = false
		ATTACK:
			attack_current = combo[combo_count -1]
			$AnimationPlayer.play(attack_current['animation'])
			monitoring = true
	state = new_state

func _input(event):
	if not state == ATTACK:
		return
	if attack_input_state != LISTENING:
		return
	if event.is_action_pressed('attack'):
		attack_input_state = REGISTERED

func _physics_process(delta):
	if attack_input_state == REGISTERED and ready_for_next_attack:
		attack()

func attack():
	combo_count += 1
	_change_state(ATTACK)


# use with AnimationPlayer func track
func set_attack_input_listening():
	attack_input_state = LISTENING


# use with AnimationPlayer func track
func set_ready_for_next_attack():
	ready_for_next_attack = true


func _on_body_entered(body):
	if body.get_rid().get_id() in hit_objects:
		return
	hit_objects.append(body.get_rid().get_id())
	body.take_damage(self, attack_current['damage'], attack_current['effect'])


func _on_animation_finished(name):
	if not attack_current:
		return

	if attack_input_state == REGISTERED and combo_count < MAX_COMBO_COUNT:
		attack()
	else:
		_change_state(IDLE)
		emit_signal("attack_finished")
