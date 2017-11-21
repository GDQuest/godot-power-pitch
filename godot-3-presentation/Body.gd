extends RichTextLabel

export(bool) var center = true

func _ready():
	set_scroll_active(false)

func set_text(string):
	if center:
		string = center_text(string)
	bbcode_text = string

func center_text(string):
	var new_bbcode_text = ''
	for line in string.split('\n'):
		line = '%s%s%s' % ['[center]', line, '[/center]']
		new_bbcode_text += line + '\n'
	return new_bbcode_text