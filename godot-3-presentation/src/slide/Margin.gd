extends MarginContainer


onready var margins: = {
	'right' : get('custom_constants/margin_right'),
	'top' : get('custom_constants/margin_top'),
	'left' : get('custom_constants/margin_left'),
	'bottom' : get('custom_constants/margin_bottom'),
}


func use_margins(value: float) -> void:
	if value:
		set('custom_constants/margin_right', margins['right'])
		set('custom_constants/margin_top', margins['top'])
		set('custom_constants/margin_left', margins['left'])
		set('custom_constants/margin_bottom', margins['bottom'])
	else:
		set('custom_constants/margin_right', 0)
		set('custom_constants/margin_top', 0)
		set('custom_constants/margin_left', 0)
		set('custom_constants/margin_bottom', 0)
