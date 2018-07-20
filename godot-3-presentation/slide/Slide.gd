extends Container

signal content_updated(data)

var content setget set_content

var shadow = false

func _on_Presentation_new_slide_requested(slide_data):
	self.content = slide_data

func set_content(data):
	content = {
		'title': '',
		'subtitle': '',
		'body': '',
		'picture': '',
		'video': '',
		'demo': '',
		'footer': '',
		'background': '',
		'config': {}
	}
	for key in data.keys():
		content[key] = data[key]
	emit_signal("content_updated", content)
