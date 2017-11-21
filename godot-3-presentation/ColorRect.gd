extends ColorRect

var start_color = Color('#0062b1')
var end_color = Color('#1698ee')

var tween_backwards = false

const TWEEN_DURATION = 2.6

func _ready():
	color = start_color
	$Tween.interpolate_property(self, 'color', start_color, end_color, TWEEN_DURATION, Tween.TRANS_SINE, Tween.EASE_IN_OUT)
	$Tween.start()



func _on_Tween_tween_completed( object, key ):
	tween_backwards = not tween_backwards
	if tween_backwards:
		$Tween.interpolate_property(self, 'color', end_color, start_color, TWEEN_DURATION, Tween.TRANS_SINE, Tween.EASE_IN_OUT)
	else:
		$Tween.interpolate_property(self, 'color', start_color, end_color, TWEEN_DURATION, Tween.TRANS_SINE, Tween.EASE_IN_OUT)

