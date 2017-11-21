tool extends Container


export(String) var title setget set_title
export(String) var subtitle setget set_subtitle
export(String) var body setget set_body
export(String) var picture_path setget set_picture
export(String) var video_path setget set_video
export(String) var demo_path setget set_demo
export(String) var footer setget set_footer

var shadow = false


onready var title_node = $Margin/Frame/Top/Title
onready var subtitle_node = $Margin/Frame/Top/Subtitle
onready var body_node = $Margin/Frame/Body/Text
onready var picture_node = $Margin/Frame/Body/Picture
onready var video_node = $Margin/Frame/Body/Video
onready var demo_node = $Margin/Demo
onready var footer_node = $Margin/Frame/Footer


func set_title(value):
	title = value

	if not title_node:
		return
	
	title_node.get_node('Text').text = value
	title_node.get_node('Text/Shadow').text = value
	
	title_node.visible = not value == ''


func set_subtitle(value):
	subtitle = value

	if not subtitle_node:
		return
	subtitle_node.text = value
	subtitle_node.get_node('Shadow').text = value
	
	subtitle_node.visible = not value == ''

func set_body(value):
	body = value

	if not body_node:
		return
	body_node.bbcode_text = value
	body_node.get_node('Shadow').bbcode_text = value
	
	body_node.visible = not value == ''


func set_picture(value):
	picture_path = value
	if not picture_node:
		return
	picture_node.texture = load(value) if value else null
	picture_node.visible = not value == ''


func set_footer(value):
	footer = value

	if not footer_node:
		return
	footer_node.text = value
	footer_node.visible = not value == ''


func set_demo(value):
	demo_path = value

	if not demo_node:
		return
	if demo_node.get_child_count() > 0:
		for node in demo_node.get_children():
			node.queue_free()
	if demo_path == '':
		return
	demo_node.add_child(load(demo_path).instance())


func set_video(value):
	"""
	At the moment there's no way to know the video size
	The node's min size is 720p so you shouldn't show other 
	nodes at the same time: it'll push against them and 
	expand the slide's margin container
	"""
	video_path = value
	
	if not video_node:
		return

	video_node.visible = not value == ''
	if value == '':
		video_node.stream = null
		return
	
	video_node.stream = load(value)
	video_node.play()
	video_node.paused = false
