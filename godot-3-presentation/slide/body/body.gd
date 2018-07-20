extends Container

export(bool) var center = true

onready var body_text = $Margin/Rows/Text
onready var picture = $Margin/Rows/Picture
onready var video = $Margin/Rows/Video
onready var demo = $Demo

func _on_Slide_content_updated(data):
	body_text.display(data['body'])
	picture.display(data['picture'])
	video.display(data['video'], data['config'])
	demo.display(data['demo'])

	var use_margins = data['title'] != "" or data['footer'] != ""
	$Margin.use_margins(use_margins)

