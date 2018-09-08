extends Node

signal new_slide_requested(data)

enum DIRECTIONS {PREVIOUS = -1, CURRENT = 0, NEXT = 1}
export(String, FILE, '*.json') var SLIDES_PATH = "res://content/power_pitch/power-pitch.json"
var slide_index = 0
var slides_data = []

func _ready():
	slides_data = load_json(SLIDES_PATH)
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

func save_json(data, path):
	var file = File.new()
	var json_path = path.replace(".gd", ".json")
	file.open(json_path, file.WRITE)
	file.store_string(to_json(data))
	file.close()

func load_json(path):
	var file = File.new()
	file.open(path, file.READ)
	var content = file.get_as_text()
	file.close()
	return parse_json(content)
