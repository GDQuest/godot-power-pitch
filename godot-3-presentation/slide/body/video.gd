extends VideoPlayer

export(String) var BASE_PATH = 'res://content/video/'

func _input(event):
	if event.is_action_pressed("toggle_pause"):
		paused = not paused

func display(file_name, config={}):
	rect_min_size = Vector2(1280, 720)
	if 'video_size' in config.keys():
		var video_size = config['video_size']
		rect_min_size = Vector2(video_size['x'], video_size['y'])

	visible = not file_name == ""
	if file_name == "":
		stream = null
		return
	var video_path = BASE_PATH + file_name
	stream = load(video_path)
	play()
	paused = false
