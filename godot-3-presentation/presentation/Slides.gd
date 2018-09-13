tool
extends Node

enum DIRECTIONS {PREVIOUS = -1, CURRENT = 0, NEXT = 1}

var slide_current

func initialize():
	for slide in get_children():
		slide.hide()
	slide_current = get_child(0)
	display(CURRENT)

func display(direction=CURRENT):
	var previous_slide = slide_current
	previous_slide.hide()
	
	var new_slide_index = clamp(slide_current.get_index() + direction, 0, len(get_children()) - 1)
	var new_slide = get_child(new_slide_index)
	new_slide.show()
	slide_current = new_slide
