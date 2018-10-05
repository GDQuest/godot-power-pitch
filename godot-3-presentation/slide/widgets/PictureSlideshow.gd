extends Control

export(float, 0.0, 10.0) var DISPLAY_DURATION = 4.0
export(float, 0.0, 1.0) var TRANSITION_DURATION = 0.4
export(Color) var COLOR_MODULATE_PAUSED = Color('#d9e2e5')

const COLOR_OPAQUE = Color("#ffffffff")
const COLOR_TRANSPARENT = Color("#00ffffff")

onready var tween = $Tween
onready var timer = $Timer

var paused = false setget set_paused

var slides = []
var index = 0
var picture_active

func _ready():
	for node in get_children():
		if not node is Control:
			continue
		slides.append(node)

	for widget in slides:
		widget.modulate = COLOR_TRANSPARENT
		widget.hide()
	start()

# Pause and navigation
func _input(event):
	if event.is_action_pressed('ui_accept'):
		self.paused = not paused

	if event.is_action_pressed('ui_left'):
		display(index - 1, false)
	if event.is_action_pressed('ui_right'):
		display(index + 1, false)

func set_paused(value):
	paused = value
	timer.paused = value
	if paused:
		tween.stop_all()
		modulate = COLOR_MODULATE_PAUSED
	else:
		tween.resume_all()
		modulate = COLOR_OPAQUE

func _on_Timer_timeout():
	display(index + 1)

func display(slide_index, animate=true):
	var picture_previous = picture_active
	index = (slide_index + slides.size()) % slides.size()
	picture_active = slides[index]
	picture_active.show()

	if animate:
		tween.interpolate_property(picture_previous, 'modulate', COLOR_OPAQUE, COLOR_TRANSPARENT, TRANSITION_DURATION, Tween.TRANS_LINEAR, Tween.EASE_IN)
		tween.interpolate_property(picture_active, 'modulate', COLOR_TRANSPARENT, COLOR_OPAQUE, TRANSITION_DURATION, Tween.TRANS_LINEAR, Tween.EASE_IN)
		tween.start()
		yield(tween, "tween_completed")

	picture_previous.modulate = COLOR_TRANSPARENT
	picture_active.modulate = COLOR_OPAQUE
	picture_previous.hide()
	timer.start()

func _on_tree_entered():
	start()

func start():
	index = 0
	if not slides:
		return
	picture_active = slides[index]
	picture_active.modulate = COLOR_OPAQUE
	picture_active.show()
	timer.wait_time = DISPLAY_DURATION
	timer.start()
