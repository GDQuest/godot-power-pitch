tool
extends Node

enum DIRECTIONS {PREVIOUS = -1, CURRENT = 0, NEXT = 1}

var slide_current
var slide_nodes = []

func initialize():
	for slide in get_children():
		slide.hide()
		slide_nodes.append(slide)
		remove_child(slide)
	slide_current = slide_nodes[0]
	add_child(slide_current)
	slide_current.show()

func display(direction=CURRENT):
	var previous_slide = slide_current
	
	var previous_index = slide_nodes.find(slide_current)
	var new_index = clamp(previous_index + direction, 0, slide_nodes.size() - 1)
	if new_index == previous_index:
		return

	var new_slide = slide_nodes[new_index]
	add_child(new_slide)
	new_slide.show()
#	yield(new_slide.play("fade_in"), "completed")
	previous_slide.hide()
	remove_child(previous_slide)
	slide_current = new_slide
