extends TextureRect


const COLOR_TRANSPARENT = Color(1.0, 1.0, 1.0, 0.0)
const COLOR_OPAQUE = Color(1.0, 1.0, 1.0, 1.0)

const TRANSITION_DURATION = 0.4

func _ready():
	modulate = COLOR_TRANSPARENT


func _on_mouse_entered():
	$Tween.interpolate_property(self, 'modulate', modulate, COLOR_OPAQUE, TRANSITION_DURATION, Tween.TRANS_LINEAR, Tween.EASE_IN)
	$Tween.start()


func _on_mouse_exited():
	$Tween.interpolate_property(self, 'modulate', modulate, COLOR_TRANSPARENT, TRANSITION_DURATION, Tween.TRANS_LINEAR, Tween.EASE_IN)
	$Tween.start()
