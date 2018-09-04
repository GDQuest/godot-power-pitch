extends TextureRect

export(String) var LEGACY_PATH = "res://content/_old_presentation/img/"
export(String) var BASE_PATH = "res://content/power_pitch/img/"

func display(relative_path):
	visible = not relative_path == ""
	if relative_path == "":
		return
	
	var path_tester = File.new()
	var picture_path = BASE_PATH + relative_path
	print(picture_path)
	if not path_tester.file_exists(picture_path):
		picture_path = LEGACY_PATH + relative_path
	texture = load(picture_path)
