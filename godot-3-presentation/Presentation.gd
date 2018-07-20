extends Node

signal new_slide_requested(data)

enum DIRECTIONS {PREVIOUS = -1, CURRENT = 0, NEXT = 1}
export(String, FILE, '*.gd') var SLIDES_PATH = 'res://content/en.gd'

var slide_index = 0
var slides_data = []

func _ready():
	slides_data = load(SLIDES_PATH).new().data
	request_slide(CURRENT)
	
func _input(event):
	if event.is_action_pressed('ui_next'):
		request_slide(NEXT)
	if event.is_action_pressed('ui_previous'):
		request_slide(PREVIOUS)

func _on_TouchControls_slide_change_requested(direction):
	request_slide(direction)

func request_slide(direction=CURRENT):
	slide_index = clamp(slide_index + direction, 0, len(slides_data) - 1)
	emit_signal('new_slide_requested', slides_data[slide_index])
