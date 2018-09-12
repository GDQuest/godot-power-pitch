extends Control

export(bool) var center = true

onready var textbox = $Row/TextBox
onready var picture = $Row/Picture
onready var video = $Row/Video
onready var demo = $Row/Demo

func update(slide_data):
	textbox.text = slide_data['body']
	picture.texture = load(slide_data['picture'])
	video.display(slide_data['video'], slide_data['config'])
	demo.display(slide_data['demo'])
