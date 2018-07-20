extends Container

func _on_Slide_content_updated(data):
	var string = data['footer']
	visible = not string == ""
	$Text.text = string
