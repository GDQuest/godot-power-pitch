extends Node

onready var slides = $Slides

func _ready():
	slides.initialize()

func _input(event):
	if event.is_action_pressed('ui_next'):
		slides.display(slides.NEXT)
	if event.is_action_pressed('ui_previous'):
		slides.display(slides.PREVIOUS)

func _on_SwipeDetector_swiped(direction):
	if direction.x == 1:
		slides.display(slides.NEXT)
	if direction.x == -1:
		slides.display(slides.PREVIOUS)

func _on_TouchControls_slide_change_requested(direction):
	slides.display(direction)
