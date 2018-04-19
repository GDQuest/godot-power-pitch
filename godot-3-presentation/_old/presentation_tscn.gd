extends Node

enum DIRECTION {PREVIOUS, NEXT}

export(String, FILE, '*.gd') var slides_path = 'res://slides/fr.gd'

var current_slide = null

var slide_index = 0
var slide_count = 0

var slides = []

func _ready():
	slides = load_slides("res://slides")
	slide_count = len(slides)
	change_slide(slide_index)


func _input(event):
	if event.is_action_pressed('ui_next'):
		go_to_next_slide(NEXT)
	if event.is_action_pressed('ui_previous'):
		go_to_next_slide(PREVIOUS)


func load_slides(dir_path):
	var scene_paths = get_scenes_in_dir(dir_path)
	var scene_resources = []
	for path in scene_paths:
		scene_resources.append(load(path))
	return scene_resources


func get_scenes_in_dir(dir_path):
	# Opens the dir_path directory and returns a list of .tscn file paths
	var scene_paths = []

	var dir = Directory.new()
	if not dir.open(dir_path) == OK:
		print('Could not open the directory %s' % dir_path)
		return null

	dir.list_dir_begin()
	var file_name = dir.get_next()
	while file_name != "":
		if file_name.ends_with('.tscn'):
			scene_paths.append(dir_path + '/' + file_name)
		file_name = dir.get_next()
	dir.list_dir_end()

	return scene_paths


func go_to_next_slide(direction):
	# Updates the slide index and loads the corresponding slide
	var previous_slide_index = slide_index
	if direction == PREVIOUS and slide_index > 0:
		slide_index -= 1
	elif direction == NEXT and slide_index < slide_count - 1:
		slide_index += 1

	if slide_index == previous_slide_index:
		return

	change_slide(slide_index)


func change_slide(index):
	remove_child(current_slide)
	var instance = slides[index].instance()
	add_child(instance)
	current_slide = get_child(0)
