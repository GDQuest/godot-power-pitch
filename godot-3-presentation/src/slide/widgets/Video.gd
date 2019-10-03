extends VideoPlayer
"""
Displays a video and forces its minimum size.
Add pause support to VideoPlayer
"""


export(String) var base_path: = 'res://content/video/'


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("toggle_pause"):
		paused = not paused


func display(file_name: String, config: = {}) -> void:
	rect_min_size = Vector2(1280, 720)
	if 'video_size' in config.keys():
		var video_size: Vector2 = config['video_size']
		rect_min_size = Vector2(video_size['x'], video_size['y'])

	visible = not file_name == ""
	if file_name == "":
		stream = null
		return
	var video_path: String = base_path + file_name
	stream = load(video_path)
	play()
	paused = false
