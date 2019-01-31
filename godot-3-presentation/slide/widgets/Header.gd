tool
extends Control

export(String) var title = "" setget set_title
export(String) var subtitle = "" setget set_subtitle
export(Resource) var font_override = null

var FONTS_DEFAULT = {
	'title': preload("res://theme/fonts/title_montserrat.tres"),
	'subtitle': preload("res://theme/fonts/subtitle_montserrat.tres"),
}
var FONTS_CJK = {
	'title': preload("res://theme/fonts/title_noto.tres"),
	'subtitle': preload("res://theme/fonts/subtitle_noto.tres"),
}

onready var title_node = $Column/Title
onready var title_shadow_node = $Column/Title/Shadow
onready var subtitle_node = $Column/Subtitle
onready var subtitle_shadow_node = $Column/Subtitle/Shadow

func _ready():
	self.title = title
	self.subtitle = subtitle

func set_title(string):
	title = string
	if not title_node:
		return
	title_node.display(string)

func set_subtitle(string):
	subtitle = string
	if not subtitle_node:
		return
	subtitle_node.display(string)

func translate():
	var locale = TranslationServer.get_locale()
	var fonts = FONTS_DEFAULT
	if font_override:
		title_node.set('custom_fonts/font', font_override)
		title_shadow_node.set('custom_fonts/font', font_override)
		return

	if locale in ['ja', 'ko', 'zh', 'ar']:
			fonts = FONTS_CJK

	title_node.set('custom_fonts/font', fonts['title'])
	title_shadow_node.set('custom_fonts/font', fonts['title'])
	subtitle_node.set('custom_fonts/font', fonts['subtitle'])
	subtitle_shadow_node.set('custom_fonts/font', fonts['subtitle'])

func get_translation_data():
	var data = { 'title': title }
	if subtitle:
		data['subtitle'] = subtitle
	return data
