extends "res://presentation/Slides.gd"

export(String, FILE, "*.json") var presentation_path = ""
var slide_template = preload("res://presentation/legacy/LegacySlide.tscn")

func initialize():
	generate_slides()
	.initialize()

func generate_slides():
	var slides_data = load_json(presentation_path)
	var slides = []
	var id = 1

	var presentation_folder = presentation_path.left(presentation_path.rfind("/") + 1)
	
	for data in slides_data:
		var new_slide = slide_template.instance()
		
		var title = data['title'].replace(" ", "_").to_lower() if 'title' in data else "untitled"
		new_slide.name = "%02d.%s" % [id, title]

		add_child(new_slide)
		new_slide.initialize(data)
#		save_as_scene(presentation_folder, new_slide)
		new_slide.visible = false
		id += 1

func load_json(path):
	var file = File.new()
	file.open(path, file.READ)
	var content = file.get_as_text()
	file.close()
	return parse_json(content)

func save_as_scene(folder_path, node_branch):
	var packed_scene = PackedScene.new()
	packed_scene.pack(node_branch)
	ResourceSaver.save(folder_path + node_branch.name + ".tscn", packed_scene)
