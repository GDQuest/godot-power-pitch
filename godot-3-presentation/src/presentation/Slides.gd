tool
extends Node
"""
Container for presentation Slide Nodes.
Controls the currently displayed Slide.
"""


enum Directions {PREVIOUS = -1, CURRENT = 0, NEXT = 1}

export var skip_animation: = false
var index_active: = 0 setget set_index_active

var slide_current
var slide_nodes: = []


func _unhandled_input(event: InputEvent) -> void:
	var valid_event: bool = (
		event is InputEventSwipe or
		event is InputEventMouseButton or
		event.is_action('ui_next') or
		event.is_action('ui_previous')
	)
	if not valid_event:
		return

	if event.is_action_pressed('ui_next'):
		self.index_active += 1
	elif event.is_action_pressed('ui_previous'):
		self.index_active -= 1
	elif event is InputEventSwipe:
		if sign(event.direction.x) == 1:
			self.index_active += 1
		else:
			self.index_active -= 1
	elif event is InputEventMouseButton:
		match event.button_index:
			BUTTON_LEFT:
				self.index_active += 1
			BUTTON_RIGHT:
				self.index_active -= 1
	get_tree().set_input_as_handled()


func initialize() -> void:
	for slide in get_children():
		slide.hide()
		slide_nodes.append(slide)
		remove_child(slide)
	slide_current = slide_nodes[0]
	add_child(slide_current)
	slide_current.show()


func set_index_active(value : int) -> void:
	var index_previous: = index_active
	index_active = clamp(value, 0, slide_nodes.size() - 1)
	if index_active == index_previous:
		set_process_input(true)
	else:
		_display(index_active)


func _display(slide_index : int) -> void:
	set_process_input(false)
	var previous_slide = slide_current
	var new_slide = slide_nodes[slide_index]
	add_child(new_slide)
	new_slide.show()
	update_translations()

	if not skip_animation:
		var animation: = "fade_in"
		yield(new_slide.play(animation), "completed")

	previous_slide.hide()
	remove_child(previous_slide)
	slide_current = new_slide

	set_process_input(true)


func update_translations() -> void:
	var translations: PoolStringArray = ProjectSettings.get_setting("locale/translations")
	if not translations or translations.size() == 0:
		return

	for node in get_tree().get_nodes_in_group("translate"):
		var node_uid: = get_translation_uid(node)
		var translatable_properties: String = node.get_translation_data()
		for key in translatable_properties:
			var string_uid: String = node_uid + "_" + key
			node.set(key, tr(string_uid))
		if node.has_method('translate'):
			node.translate()


func get_translation_uid(node: Node) -> String:
	return node.owner.name + "_" + str(node.owner.get_path_to(node)).replace("/", "_")


func save_as_png(output_folder: String) -> void:
	skip_animation = true
	get_tree().paused = true
	get_viewport().set_clear_mode(Viewport.CLEAR_MODE_ONLY_NEXT_FRAME)
	var id: = 0
	for slide in slide_nodes:
		# Need to wait two frames to ensure the screen capture works
		yield(get_tree(), "idle_frame")
		yield(get_tree(), "idle_frame")

		var img: = get_viewport().get_texture().get_data()
		img.flip_y()
		var path: = output_folder.plus_file(str(id).pad_zeros(2) + '-' + slide.name + '.png')
		img.save_png(path)
		self.index_active += 1
		id += 1
	get_viewport().set_clear_mode(Viewport.CLEAR_MODE_ALWAYS)
	get_tree().paused = false
	skip_animation = false
