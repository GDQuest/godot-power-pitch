tool
extends Control

export(String, MULTILINE) var text : = "" setget set_text

onready var label : Label = $Text
onready var label_shadow : Label = $Text/Shadow


func set_text(string):
	text = string
	visible = text != ""
	if not label:
		label = $Text
		label_shadow = $Text/Shadow
		if not label:
			return
	label.text = string
	label_shadow.text = string


func get_translation_data():
	return {'text': text}
