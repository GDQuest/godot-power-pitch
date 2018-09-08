extends Control

export(String) var BASE_PATH = 'res://content/demos/'

func display(file_name):
	if get_child_count() > 0:
		for node in get_children():
			node.queue_free()
	if file_name == "":
		return
	var demo_path = BASE_PATH + file_name
	add_child(load(demo_path).instance())
