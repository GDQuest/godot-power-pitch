# TODO: Should manage loading data, changing slide, delegating
# And some global presentation-related properties
extends Node

enum DIRECTIONS {PREVIOUS = -1, CURRENT = 0, NEXT = 1}

signal new_slide_requested

export(bool) var add_text_shadow = true
export(String, FILE, '*.gd') var slides_path = 'res://content/en.gd'

var slide_index = 0
var slides_data = []


func _ready():
	slides_data = load(slides_path).new().data
	go_to_slide(CURRENT)
	
	if add_text_shadow:
		$Slide.shadow = true


func _input(event):
	if event.is_action_pressed('ui_next'):
		go_to_slide(NEXT)
	if event.is_action_pressed('ui_previous'):
		go_to_slide(PREVIOUS)


func go_to_slide(direction):
	slide_index = clamp(slide_index + direction, 0, len(slides_data) - 1)
	var new_slide_data = slides_data[slide_index]
	emit_signal('new_slide_requested', new_slide_data)


func _on_TouchControls_slide_change_requested(direction):
	go_to_slide(direction)
