tool
extends Node

enum DIRECTIONS {PREVIOUS = -1, CURRENT = 0, NEXT = 1}

var slide_current
var slide_nodes = []

func _input(event):
	if event.is_action_pressed('ui_next'):
		display(NEXT)
		get_tree().set_input_as_handled()
	if event.is_action_pressed('ui_previous'):
		display(PREVIOUS)
		get_tree().set_input_as_handled()

	if not event is InputEventMouseButton or not event.is_pressed():
		return
	match event.button_index:
		BUTTON_LEFT:
			display(NEXT)
		BUTTON_RIGHT:
			display(PREVIOUS)
	get_tree().set_input_as_handled()

func initialize():
	for slide in get_children():
		slide.hide()
		slide_nodes.append(slide)
		remove_child(slide)
	slide_current = slide_nodes[0]
	add_child(slide_current)
	slide_current.show()

func display(direction=CURRENT, skip_animation=false):
	set_process_input(false)
	var previous_slide = slide_current
	
	var previous_index = slide_nodes.find(slide_current)
	var new_index = clamp(previous_index + direction, 0, slide_nodes.size() - 1)
	if new_index == previous_index:
		set_process_input(true)
		return

	var new_slide = slide_nodes[new_index]
	add_child(new_slide)
	new_slide.show()
	update_translations()
	
#	var animation = "enter_from_right" if direction == NEXT else "enter_from_left"
	if not skip_animation:
		var animation = "fade_in"
		yield(new_slide.play(animation), "completed")
	
	previous_slide.hide()
	remove_child(previous_slide)
	slide_current = new_slide
	
	set_process_input(true)

func update_translations():
	for node in get_tree().get_nodes_in_group("translate"):
		var node_uid = get_translation_uid(node)
		var translatable_properties = node.get_translation_data()
		for key in translatable_properties:
			var string_uid = node_uid + "_" + key
			node.set(key, tr(string_uid))
		if node.has_method('translate'):
			node.translate()

func get_translation_uid(node):
	return node.owner.name + "_" + str(node.owner.get_path_to(node)).replace("/", "_")

func save_as_png(output_folder):
	get_tree().paused = true
	get_viewport().set_clear_mode(Viewport.CLEAR_MODE_ONLY_NEXT_FRAME)
	var id = 0
	for slide in slide_nodes:
		# Need to wait two frames to ensure the screen capture works
		yield(get_tree(), "idle_frame")
		yield(get_tree(), "idle_frame")
	
		var img = get_viewport().get_texture().get_data()
		img.flip_y()
		var path = output_folder.plus_file(str(id).pad_zeros(2) + '-' + slide.name + '.png')
		img.save_png(path)
		display(NEXT, true)
		id += 1
	get_viewport().set_clear_mode(Viewport.CLEAR_MODE_ALWAYS)
	get_tree().paused = false
