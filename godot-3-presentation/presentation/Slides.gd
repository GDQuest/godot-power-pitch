extends Node

enum DIRECTIONS {PREVIOUS = -1, CURRENT = 0, NEXT = 1}

onready var slide_current = get_child(0)

# TODO: remove slides from tree, store in array, and add/remove as needed?
func display(direction=CURRENT):
	var slide_index = clamp(slide_current.get_index() + direction, 0, len(get_children()) - 1)
	slide_current = get_child(slide_index)
