tool
extends Node

enum DIRECTIONS {PREVIOUS = -1, CURRENT = 0, NEXT = 1}

var slide_current

func initialize():
	for slide in get_children():
		slide.hide()
	slide_current = get_child(0)
	slide_current.show()

func display(direction=CURRENT):
	var previous_slide = slide_current
	
	var previous_index = slide_current.get_index()
	var new_index = clamp(slide_current.get_index() + direction, 0, len(get_children()) - 1)
	if new_index == previous_index:
		return

	var new_slide = get_child(new_index)
	new_slide.show()
#	yield(new_slide.play("fade_in"), "completed")
	previous_slide.hide()
	slide_current = new_slide
