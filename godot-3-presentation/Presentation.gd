# TODO: Should manage loading data, changing slide, delegating
# And some global presentation-related properties
extends Node

enum DIRECTION {PREVIOUS, NEXT}

signal new_slide_requested

export(bool) var add_text_shadow = true
export(bool) var particles = false setget set_particles_active

var ready = false

export(String, FILE, '*.gd') var slides_path = 'res://content/en.gd'
var slides_data = []

var slide_index = 0


func _ready():
	if Engine.is_editor_hint():
		return
	ready = true
	slides_data = load(slides_path).new().data

	if add_text_shadow:
		$Slide.shadow = true

	set_particles_active(particles)
	emit_signal('new_slide_requested', slides_data[slide_index])


func _input(event):
	if event.is_action_pressed('ui_next'):
		go_to_next_slide(NEXT)
	if event.is_action_pressed('ui_previous'):
		go_to_next_slide(PREVIOUS)


func go_to_next_slide(direction):
	# Updates the slide index and loads the corresponding slide
	var previous_slide_index = slide_index
	if direction == PREVIOUS and slide_index > 0:
		slide_index -= 1
	elif direction == NEXT and slide_index < len(slides_data) - 1:
		slide_index += 1
	if slide_index == previous_slide_index:
		return

	var new_slide_data = slides_data[slide_index]
	emit_signal('new_slide_requested', new_slide_data)


func set_particles_active(value):
	if Engine.is_editor_hint():
		pass
	elif not ready:
		return
	particles = value

	$Foreground/Particles.visible = value
	$Background/Particles.visible = value
	for node in $Foreground/Particles.get_children():
		node.emitting = value
	for node in $'Background/Particles'.get_children():
		if node is Node2D:
			for child in node.get_children():
				child.emitting = value
		else:
			node.emitting = value