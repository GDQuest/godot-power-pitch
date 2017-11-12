tool extends Container


export(String) var title setget set_title
export(String) var subtitle setget set_subtitle
export(String) var body setget set_body
export(String) var picture_path setget set_picture
export(String) var footer setget set_footer

var shadow = false

var nodes = {
		'title': null,
		'subtitle': null,
		'body': null,
		'picture': null,
		'footer': null
}

func _ready():
	nodes = {
		'title': $Margin/Frame/Top/Title/Text,
		'subtitle': $Margin/Frame/Top/Subtitle,
		'body': $Margin/Frame/Body/Text,
		'picture': $Margin/Frame/Body/SidePicture,
		'footer': $Margin/Frame/Footer
	}


func set_title(value):
	title = value

	if not nodes['title']: # Bugs somehow
		return
#	if not 'title' in nodes.keys():

	nodes['title'].text = value
	nodes['title'].get_node('Shadow').text = value


func set_subtitle(value):
	subtitle = value

	if not nodes['subtitle']:
		return
	nodes['subtitle'].text = value
	nodes['subtitle'].get_node('Shadow').text = value

func set_body(value):
	body = value

	if not nodes['body']:
		return
	nodes['body'].bbcode_text = value
	nodes['body'].get_node('Shadow').bbcode_text = value
	nodes['body'].visible = not value == ''


func set_picture(value):
	if not nodes['picture']:
		return
	nodes['picture'].texture = load(value) if value else null
	nodes['picture'].visible = not value == ''


func set_footer(value):
	footer = value

	if not nodes['footer']:
		return
	nodes['footer'].text = value

