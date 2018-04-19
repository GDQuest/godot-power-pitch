extends Container

var title = "" setget set_title
var subtitle = "" setget set_subtitle

func set_title(value):
	title = value

	$Title.text = value
	$Title/Shadow.text = value
	$Title.visible = not value == ""

	visible = not value == ''


func set_subtitle(value):
	subtitle = value

	$Subtitle.text = value
	$Subtitle/Shadow.text = value
	$Subtitle.visible = not value == ""