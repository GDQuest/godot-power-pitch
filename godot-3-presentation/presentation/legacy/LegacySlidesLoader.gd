extends "res://presentation/Slides.gd"

export(String, FILE, "*.json") var presentation_path = ""
var slide_template = preload("res://presentation/legacy/LegacySlide.tscn")

func initialize():
	generate_slides()
	.initialize()

func generate_slides():
	var slides_data = load_json(presentation_path)
	var slides = []
	for data in slides_data:
		var new_slide = slide_template.instance()
		add_child(new_slide)
		new_slide.initialize(data)
		new_slide.visible = false

func load_json(path):
	var file = File.new()
	file.open(path, file.READ)
	var content = file.get_as_text()
	file.close()
	return parse_json(content)
