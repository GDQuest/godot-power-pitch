extends Node
"""
Detects swipe gestures and generates InputEventSwipe events
that are fed back into the engine.
"""


signal swipe_canceled(start_position)

export(float, 1.0, 1.5) var max_diagonal_slope: = 1.3

onready var timer: Timer = $SwipeTimeout
var swipe_start_position: = Vector2()


func _unhandled_input(event: InputEvent) -> void:
	if not event is InputEventScreenTouch:
		return
	if event.pressed:
		_start_detection(event.position)
	elif not timer.is_stopped():
		_end_detection(event.position)


func _start_detection(position: Vector2) -> void:
	swipe_start_position = position
	timer.start()


func _end_detection(position: Vector2) -> void:
	timer.stop()
	var direction: Vector2 = (position - swipe_start_position).normalized()
	# Swipe angle is too steep
	if abs(direction.x) + abs(direction.y) >= max_diagonal_slope:
		return

	var swipe: = InputEventSwipe.new()
	if abs(direction.x) > abs(direction.y):
		swipe.direction = Vector2(-sign(direction.x), 0.0)
	else:
		swipe.direction = Vector2(0.0, -sign(direction.y))
	Input.parse_input_event(swipe)


func _on_Timer_timeout() -> void:
	emit_signal('swipe_canceled', swipe_start_position)
