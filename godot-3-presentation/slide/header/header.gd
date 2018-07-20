extends Container

func _on_Slide_content_updated(data):
	var title = data['title']
	var subtitle = data['subtitle']
	
	visible = not title == ""

	$Title.text = title
	$Title/Shadow.text = title

	$Subtitle.text = subtitle
	$Subtitle/Shadow.text = subtitle
	$Subtitle.visible = not subtitle == ""
