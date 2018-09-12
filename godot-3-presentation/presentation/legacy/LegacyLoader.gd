extends Node

export(String, "*.json") var presentation_path = ""
var slide_template = preload("res://presentation/legacy/LegacySlide.tscn")

func _ready():
	var slides_data = load_json(presentation_path)
	for data in slides_data:
		var new_slide = slide_template.instance()
		new_slide.initialize(data)
		new_slide.visible = false
		add_child(new_slide)

func load_json(path):
	var file = File.new()
	file.open(path, file.READ)
	var content = file.get_as_text()
	file.close()
	return parse_json(content)
