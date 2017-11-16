tool extends Node

enum DIRECTION {PREVIOUS, NEXT}

export(bool) var add_text_shadow = true
export(bool) var particles = true setget set_particles_active

var ready = false

export(String, FILE, '*.gd') var slides_path = 'res://slides/fr.gd'
var slides = []

# For autocompletion
const TITLE = 'title'
const SUBTITLE = 'subtitle'
const BODY = 'body'
const PICTURE = 'picture'
const VIDEO = 'video'
const DEMO = 'demo'
const FOOTER = 'footer'
const BACKGROUND = 'background'
const DEMO = 'demo'

var current_slide = {
	TITLE: '',
	SUBTITLE: '',
	BODY: '',
	PICTURE: '',
	VIDEO: '',
	DEMO: '',
	FOOTER: '',
	BACKGROUND: '',
	DEMO: ''
}

onready var slide_node = $Slide

var slide_index = 0
var slide_count = 0


func _ready():
	if Engine.is_editor_hint():
		return
	ready = true
	slides = load(slides_path).new().data
	slide_count = len(slides)

	if add_text_shadow:
		slide_node.shadow = true

	set_particles_active(particles)
	change_slide(slide_index)


func _input(event):
	if event.is_action_pressed('ui_next'):
		go_to_next_slide(NEXT)
	if event.is_action_pressed('ui_previous'):
		go_to_next_slide(PREVIOUS)


func go_to_next_slide(direction):
	# Updates the slide index and loads the corresponding slide
	var previous_slide_index = slide_index
	if direction == PREVIOUS and slide_index > 0:
		slide_index -= 1
	elif direction == NEXT and slide_index < slide_count - 1:
		slide_index += 1

	if slide_index == previous_slide_index:
		return

	change_slide(slide_index)


func change_slide(index):
	var slide = slides[index]

	for key in current_slide.keys():
		current_slide[key] = ''

	for key in slide.keys():
		current_slide[key] = slide[key]

	slide_node.title = current_slide[TITLE]
	slide_node.subtitle = current_slide[SUBTITLE]

	slide_node.body = current_slide[BODY].replace('\t', '')
	slide_node.picture_path = current_slide[PICTURE]
	slide_node.video_path = current_slide[VIDEO]
	slide_node.demo_path = current_slide[DEMO]

	slide_node.footer = current_slide[FOOTER]


func set_particles_active(value):
	if Engine.is_editor_hint():
		pass
	elif not ready:
		return
	particles = value

	$Foreground/Particles.visible = value
	$Background/Particles.visible = value
	for node in $Foreground/Particles.get_children():
		node.emitting = value
	for node in $'Background/Particles'.get_children():
		if node is Node2D:
			for child in node.get_children():
				child.emitting = value
		else:
			node.emitting = value
