extends Node

export var SwipeMaxTime = 0.5
export var DiagonalLimit = 1.3

signal swipe(type)
signal swipe_canceled(initial_position)

enum SwipeType { LEFT, RIGHT, UP, DOWN }

var is_swiping = false

var swipe_event = {
	'start': Vector2(),
	'end': Vector2()
}

func _ready():
	$Timer.wait_time = SwipeMaxTime

func _input(event):
	if event is InputEventScreenTouch:
			if event.pressed:
				swipe_event['start'] = event.position
				$Timer.start()
				is_swiping = true
			elif is_swiping:
				swipe_event['end'] = event.position
				_finish_swipe()

func _finish_swipe():
	$Timer.stop()
	var result = (swipe_event['start'] - swipe_event['end']).normalized()
	if abs(result.x) + abs(result.y) >= DiagonalLimit:
		emit_signal('swipe_canceled', swipe_event['start'])
		return
	if abs(result.x) > abs(result.y):
		if result.x > 0:
			emit_signal('swipe', LEFT)
		else:
			emit_signal('swipe', RIGHT)
	else:
		if result.y > 0:
			emit_signal('swipe', UP)
		else:
			emit_signal('swipe', DOWN)

func _on_Timer_timeout():
	emit_signal('swipe_canceled', swipe_event[0])
	is_swiping = false
