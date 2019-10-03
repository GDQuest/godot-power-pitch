extends Control
"""
Slideshow. Displays one child Control at a time and fades between them
at constant time intervals.
"""


onready var tween: = $Tween
onready var timer: = $Timer

export(float, 0.0, 10.0) var display_duration: = 4.0
export(float, 0.0, 1.0) var transition_duration: = 0.4
export(Color) var color_pause: = Color('#d9e2e5')

enum Directions {PREVIOUS = -1, CURRENT = 0, NEXT = 1}

const COLOR_OPAQUE : = Color("#ffffffff")
const COLOR_TRANSPARENT : = Color("#00ffffff")

var paused: = false setget set_paused

var slides: = []
var index_active: = 0 setget set_index_active

var picture_active: Control
var picture_previous: Control



func _ready() -> void:
	for node in get_children():
		if not node is Control:
			continue
		slides.append(node)

	for widget in slides:
		widget.modulate = COLOR_TRANSPARENT
		widget.hide()

	tween.connect("tween_completed", self, "_on_tween_completed")
	start()


func start() -> void:
	if not slides:
		return
	picture_active = slides[index_active]
	picture_active.modulate = COLOR_OPAQUE
	picture_active.show()
	timer.wait_time = display_duration
	timer.start()


# Pause and navigation
func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed('ui_accept'):
		self.paused = not paused
		accept_event()
	elif event.is_action_pressed('ui_left'):
		self.index_active += Directions.PREVIOUS
		accept_event()
	elif event.is_action_pressed('ui_right'):
		self.index_active -= Directions.PREVIOUS
		accept_event()


func set_paused(value) -> void:
	paused = value
	timer.paused = value
	if paused:
		tween.stop_all()
		modulate = color_pause
	else:
		tween.resume_all()
		modulate = COLOR_OPAQUE


func set_index_active(value: int) -> void:
	var index_previous: = index_active
	var slides_count: = slides.size()
	index_active = (value + slides_count) % slides_count
	if index_active != index_previous:
		_display(index_active, true)


func _display(index: int, animate: =false) -> void:
	picture_previous = picture_active
	picture_active = slides[index]
	if picture_previous == picture_active:
		return

	picture_previous.modulate = COLOR_OPAQUE
	picture_active.modulate = COLOR_TRANSPARENT
	picture_active.show()

	if animate:
		tween.interpolate_property(picture_previous, 'modulate', COLOR_OPAQUE, COLOR_TRANSPARENT, transition_duration, Tween.TRANS_LINEAR, Tween.EASE_IN)
		tween.interpolate_property(picture_active, 'modulate', COLOR_TRANSPARENT, COLOR_OPAQUE, transition_duration, Tween.TRANS_LINEAR, Tween.EASE_IN)
		tween.start()


func _on_tween_completed(object:Object, key:String) -> void:
	picture_previous.hide()
	timer.start()


func _on_tree_entered() -> void:
	start()


func _on_Timer_timeout() -> void:
	self.index_active += Directions.NEXT
