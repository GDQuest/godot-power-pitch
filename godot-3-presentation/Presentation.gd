extends Node

enum DIRECTIONS {PREVIOUS = -1, CURRENT = 0, NEXT = 1}

signal new_slide_requested(data)

export(bool) var ADD_TEXT_SHADOW = true
export(String, FILE, '*.gd') var slides_path = 'res://content/en.gd'

var slide_index = 0
var slides_data = []

func _ready():
	slides_data = load(slides_path).new().data
	display_slide(CURRENT)
	
	if ADD_TEXT_SHADOW:
		$Slide.shadow = true

func _input(event):
	if event.is_action_pressed('ui_next'):
		display_slide(NEXT)
	if event.is_action_pressed('ui_previous'):
		display_slide(PREVIOUS)

func display_slide(direction=CURRENT):
	slide_index = clamp(slide_index + direction, 0, len(slides_data) - 1)
	emit_signal('new_slide_requested', slides_data[slide_index])

func _on_TouchControls_slide_change_requested(direction):
	display_slide(direction)
