extends VideoPlayer

func _input(event):
	if event.is_action_pressed("toggle_pause"):
		paused = not paused