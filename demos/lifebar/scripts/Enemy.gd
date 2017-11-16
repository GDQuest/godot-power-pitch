extends Node2D

enum STATES {IDLE, ATTACKING}
var state = IDLE

export var strength = 6

onready var target = $"../Player"


func _on_Timer_timeout():
	if not target:
		$Timer.stop()
		return

	if state != IDLE:
		return

	state = ATTACKING
	$AnimationPlayer.play("anticipate")


func damage_target(target, damage):
	target.take_damage(damage)


func _on_AnimationPlayer_animation_finished( name ):
	if name == "attack":
		state = IDLE
	if name == "anticipate":
		$AnimationPlayer.play("attack")
		damage_target(target, strength)


func _on_Player_died():
	target = null
