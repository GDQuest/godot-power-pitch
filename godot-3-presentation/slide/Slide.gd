# TODO: Split code to invidual components: let video, demo etc. handle themselves
# TODO: add text base-script that handles shadows
extends Container

export(String) var BASE_PATH_PICTURES = 'res://content/img/'
export(String) var BASE_PATH_VIDEO = 'res://content/video/'
export(String) var BASE_PATH_DEMO = 'res://content/demos/'

var current_slide_data = {
	'title': '',
	'subtitle': '',
	'body': '',
	'picture': '',
	'video': '',
	'demo': '',
	'footer': '',
	'background': '',
	'config': ''
}

var shadow = false

func _on_Presentation_new_slide_requested(slide_data):
	# Clear and fill slide data
	for key in current_slide_data.keys():
		current_slide_data[key] = ""
	for key in slide_data.keys():
		current_slide_data[key] = slide_data[key]

	$VBoxContainer/Header.title = current_slide_data['title']
	$VBoxContainer/Header.subtitle = current_slide_data['subtitle']

	$VBoxContainer/Body.text = current_slide_data['body'].replace('\t', '')

	#FIXME: move this out of here
	if not current_slide_data['title'] and not current_slide_data['footer']:
		$VBoxContainer/Body/Margin.set_use_margins(false)
	else:
		$VBoxContainer/Body/Margin.set_use_margins(true)

	# FIXME: refactor this
	if current_slide_data['picture'] != '':
		$VBoxContainer/Body.picture_path = BASE_PATH_PICTURES + current_slide_data['picture']
	else:
		$VBoxContainer/Body.picture_path = ''
	if current_slide_data['video'] != '':
		$VBoxContainer/Body.video_path = BASE_PATH_VIDEO + current_slide_data['video']
		print(BASE_PATH_VIDEO + current_slide_data['video'])
	else:
		$VBoxContainer/Body.video_path = ''

	if current_slide_data['demo'] != '':
		$VBoxContainer/Body.demo_path = BASE_PATH_DEMO + current_slide_data['demo']
	else:
		$VBoxContainer/Body.demo_path = ''

	$VBoxContainer/Body.config = current_slide_data['config']

	$VBoxContainer/Footer.text = current_slide_data['footer']

	# MOVE TO BODY
	$VBoxContainer/Body/Margin/Rows/Video.rect_min_size = Vector2(1280, 720)
	if current_slide_data['config']:
		var config = current_slide_data['config']
		if 'video_size' in config.keys():
			var video_size = config['video_size']
			$VBoxContainer/Body/Margin/Rows/Video.rect_min_size = Vector2(video_size['x'], video_size['y'])
