extends Control

export(bool) var center = false

func display(string):
	visible = not string == ""

	string = string.replace('\t', '')
	if center:
		string = center_text(string)
	$Text.bbcode_text = string.replace('\t', '')
	$Text/Shadow.bbcode_text = string

func center_text(string):
	var bbcode = ""
	for line in string.split("\n"):
		line = "%s%s%s" % ["[center]", line, "[/center]"]
		bbcode += line + "\n"
	return bbcode
