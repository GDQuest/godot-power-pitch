extends TextureRect

export(String) var BASE_PATH = 'res://content/img/'

func display(filepath):
	visible = not filepath == ""
	if filepath == "":
		return
	var picture_path = BASE_PATH + filepath
	texture = load(picture_path)
