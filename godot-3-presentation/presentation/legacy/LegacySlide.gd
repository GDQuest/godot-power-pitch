# Legacy slide, used to load the old presentation
extends VBoxContainer

onready var header = $Column/Header
onready var body = $Column/Body
onready var footer = $Column/Footer/Text

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

	header.title = content['title']
	header.subtitle = content['subtitle']
	
	body.display(content)
	
	footer.text = content['footer']
