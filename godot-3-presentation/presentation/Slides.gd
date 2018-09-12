tool
extends Node

enum DIRECTIONS {PREVIOUS = -1, CURRENT = 0, NEXT = 1}

onready var slide_current = get_child(0)

func _ready():
	for slide in get_children():
		slide.visible = false
	slide_current.visible = true

# TODO: remove slides from tree, store in array, and add/remove as needed?
func display(direction=CURRENT):
	var previous_slide = slide_current
	previous_slide.visible = false
	
	var new_slide_index = clamp(slide_current.get_index() + direction, 0, len(get_children()) - 1)
	var new_slide = get_child(new_slide_index)
	new_slide.visible = true
	slide_current = new_slide
