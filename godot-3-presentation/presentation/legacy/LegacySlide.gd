# Legacy slide, used to load the old presentation
extends VBoxContainer

signal shown()
signal hidden()

onready var header = $Column/Header
onready var body = $Column/Body
onready var footer = $Column/Footer

func initialize(data):
	"""Loads the slide data"""
	var content = {
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
	
	header.visible = not content['title'] == ""
	header.title = content['title']
	header.subtitle = content['subtitle']
	
	body.update(content)
	
	footer.text = content['footer']

func show():
	.show()
	emit_signal("shown")

func hide():
	.hide()
	emit_signal("hidden")
