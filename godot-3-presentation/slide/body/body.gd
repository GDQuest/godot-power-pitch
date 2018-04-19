extends Container

export(bool) var center = true

var text setget set_text
var picture_path setget set_picture
var video_path setget set_video
var demo_path setget set_demo

var config = ''

func set_text(value):
	text = value

	$Margin/Rows/Text.bbcode_text = value
	$Margin/Rows/Text/Shadow.bbcode_text = value
	$Margin/Rows/Text.visible = not value == ''


func set_picture(value):
	picture_path = value

	$Margin/Rows/Picture.texture = load(value) if value else null
	$Margin/Rows/Picture.visible = not value == ''


func set_demo(value):
	demo_path = value
	if $Demo.get_child_count() > 0:
		for node in $Demo.get_children():
			node.queue_free()
	if value == '':
		return
	$Demo.add_child(load(demo_path).instance())


func set_video(value):
	"""
	At the moment there's no way to know the video size
	The node's min size is 720p so you shouldn't show other
	nodes at the same time: it'll push against them and
	expand the slide's margin container
	"""
	video_path = value

	$Margin/Rows/Video.visible = not value == ''
	if value == '':
		$Margin/Rows/Video.stream = null
		return
	$Margin/Rows/Video.stream = load(value)
	$Margin/Rows/Video.play()
	$Margin/Rows/Video.paused = false