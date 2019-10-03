tool
extends Control


onready var title_node: = $Column/Title
onready var title_shadow_node: = $Column/Title/Shadow
onready var subtitle_node: = $Column/Subtitle
onready var subtitle_shadow_node: = $Column/Subtitle/Shadow


export var title: = "" setget set_title
export var subtitle: = "" setget set_subtitle
export var font_override: Resource

var font_title_default: Resource = preload("res://assets/theme/fonts/title_montserrat.tres")
var font_subtitle_default: Resource = preload("res://assets/theme/fonts/subtitle_montserrat.tres")
var font_title_cjk: Resource = preload("res://assets/theme/fonts/title_noto.tres")
var font_subtitle_cjk: Resource = preload("res://assets/theme/fonts/subtitle_noto.tres")


var FONTS_DEFAULT: = {
	title=font_title_default,
	subtitle=font_subtitle_default,
}
var FONTS_CJK: = {
	title=font_title_cjk,
	subtitle=font_subtitle_cjk,
}


func _ready() -> void:
	self.title = title
	self.subtitle = subtitle


func set_title(string: String) -> void:
	title = string
	if not title_node:
		return
	title_node.display(string)


func set_subtitle(string: String) -> void:
	subtitle = string
	if not subtitle_node:
		return
	subtitle_node.display(string)


func translate() -> void:
	if font_override:
		title_node.set('custom_fonts/font', font_override)
		title_shadow_node.set('custom_fonts/font', font_override)
		return

	var locale: = TranslationServer.get_locale()
	var fonts: = FONTS_DEFAULT
	if locale in ['ja', 'ko', 'zh', 'ar']:
		fonts = FONTS_CJK

	title_node.set('custom_fonts/font', fonts['title'])
	title_shadow_node.set('custom_fonts/font', fonts['title'])
	subtitle_node.set('custom_fonts/font', fonts['subtitle'])
	subtitle_shadow_node.set('custom_fonts/font', fonts['subtitle'])


func get_translation_data() -> Dictionary:
	var data: = { 'title': title }
	if subtitle:
		data['subtitle'] = subtitle
	return data
