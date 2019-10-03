tool
extends Control


export(String, MULTILINE) var text: = "" setget set_text
export var center: = false setget set_center

onready var _text: = $Text
var _text_processed: = ""


func _ready() -> void:
	update_text()


func set_text(string: String) -> void:
	text = string
	if not _text:
		return
	update_text()


func set_center(value: bool) -> void:
	center = value
	if not _text:
		return
	update_text()


func update_text() -> void:
	if center:
		_text_processed = center_text(text)
	else:
		_text_processed = text
	$Text.bbcode_text = _text_processed


func center_text(string: String) -> String:
	var bbcode: = ""
	for line in string.split("\n"):
		line = "%s%s%s" % ["[center]", line, "[/center]"]
		bbcode += line + "\n"
	return bbcode


func get_translation_data() -> Dictionary:
	return { 'text': text }
