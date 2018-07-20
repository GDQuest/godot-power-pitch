extends Control

func _on_Slide_content_updated(data):
	var title = data['title']
	var subtitle = data['subtitle']
	
	visible = not title == ""

	$Title.text = title

	$Subtitle.text = subtitle
	$Subtitle.visible = not subtitle == ""
