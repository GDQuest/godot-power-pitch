extends Node

signal language_changed()

onready var slides = $Slides

export(String, 'en', 'ja', 'fr', 'es', 'pt_BR', 'de', 'id', 'it', 'zh', 'uk_UA', 'ko', 'sk', 'pl') var language_main = 'en' setget set_language_main
export(String, 'en', 'ja', 'fr', 'es', 'pt_BR', 'de', 'id', 'it', 'zh', 'uk_UA', 'ko', 'sk', 'pl') var language_second = 'ja'

var language_active : = '' setget set_language_active


func _ready():
#	save_as_csv(get_translatable_strings()) # Use this to save the presentation as CSV
#	slides.save_as_png("res://out")
	set_language_active(language_main)
	slides.initialize()


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed('toggle_fullscreen'):
		OS.window_fullscreen = not OS.window_fullscreen
		get_tree().set_input_as_handled()
		return
	if event.is_action_pressed('change_language') and language_main != language_second:
		if TranslationServer.get_locale() == language_main:
			set_language_active(language_second)
		else:
			set_language_active(language_main)
		get_tree().set_input_as_handled()


func set_language_main(locale):
	language_main = locale
	TranslationServer.set_locale(language_main)


func set_language_active(locale) -> void:
	if locale == '':
		return
	language_active = locale
	TranslationServer.set_locale(locale)
	slides.update_translations()


# TODO: Make SwipeDetector generate InputEvents instead, and let Slides handle input
func _on_SwipeDetector_swiped(direction):
	if direction.x == 1:
		slides.display(slides.NEXT)
	if direction.x == -1:
		slides.display(slides.PREVIOUS)


func _on_TouchControls_slide_change_requested(direction):
	slides.display(direction)


"""
Returns a dictionary with a list of { translatable_string_uid: string }
and the version of the project in which the data was generated
"""
func get_translatable_strings():
	var data = []
	for node in get_tree().get_nodes_in_group("translate"):
		var src_data = node.get_translation_data()
		var node_uid = slides.get_translation_uid(node)
		for key in src_data:
			var string_uid = node_uid + "_" + key
			data.append({ string_uid: src_data[key] })
	return {
			'data': data,
			'version': ProjectSettings.get_setting("application/config/version"),
		}


# TODO: Move to a PresentationSaver class
"""
Saves translation data from get_translatable_strings() to
this scene's folder, as scene_name.csv
"""
func save_as_csv(translation_data):
	var folder_path = filename.left(filename.rfind("/") + 1)
	var save_path = folder_path + name + ".csv"
	var file = File.new()
	
	file.open(save_path, File.WRITE)
	if not file.is_open():
		print("Error saving translation data: could not open file %s" % save_path)
		return

	file.store_line("id,en")
	var data_list = translation_data['data']
	var csv_list = []
	for dict in data_list:
		for key in dict:
			var as_csv = key + "," +  "\"" + dict[key] + "\""
			csv_list.append(as_csv)
	for line in csv_list:
		file.store_line(line)
	file.close()
