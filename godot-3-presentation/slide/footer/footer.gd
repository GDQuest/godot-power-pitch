extends Container

var text = '' setget set_text

func set_text(value):
	text = value

	$Text.text = value
	$Text.visible = not value == ''

	visible = not value == ''
