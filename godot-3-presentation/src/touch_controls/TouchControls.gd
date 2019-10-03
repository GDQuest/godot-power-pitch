extends Control


signal slide_change_requested(direction)

enum Directions {PREVIOUS = -1, NEXT = 1}


func _ready() -> void:
	for child in get_children():
		child.connect("touched", self, "_on_touch_button_touched")


func _on_touch_button_touched(button) -> void:
	if button == $TouchButtonLeft:
		emit_signal("slide_change_requested", Directions.PREVIOUS)
	if button == $TouchButtonRight:
		emit_signal("slide_change_requested", Directions.NEXT)
