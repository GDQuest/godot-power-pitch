extends MarginContainer
tool

export(Vector2) var margin setget set_margin
#export(bool) var show_frame = false setget set_frame_visibility

func set_margin(value):
	margin = value

	set("custom_constants/margin_left", value.x)
	set("custom_constants/margin_right", value.x)

	set("custom_constants/margin_top", value.y)
	set("custom_constants/margin_bottom", value.y)


#
#func set_frame_visibility(value):
#	$Frame.visible = value