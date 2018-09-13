extends Control

export(bool) var center = true

onready var textbox = $Row/TextBox
onready var picture = $Row/Picture
onready var video = $Row/Video
onready var demo = $Row/Demo

func update(slide_data):
	textbox.text = slide_data['body']
	textbox.visible = slide_data['body'] != ""

	picture.path = slide_data['picture']
	
	video.visible = slide_data['video'] != ""
	video.display(slide_data['video'], slide_data['config'])
	
	demo.demo_path = slide_data['demo']
