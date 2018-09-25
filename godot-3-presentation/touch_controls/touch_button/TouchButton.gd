extends Button

signal touched(button)

const COLOR_TRANSPARENT = Color("#00ffffff")
const COLOR_OPAQUE = Color("#ffffffff")

const TRANSITION_DURATION = 0.4

func _ready():
	modulate = COLOR_TRANSPARENT

func _on_mouse_entered():
	$Tween.interpolate_property(self, 'modulate', modulate, COLOR_OPAQUE, TRANSITION_DURATION, Tween.TRANS_LINEAR, Tween.EASE_IN)
	$Tween.start()

func _on_mouse_exited():
	$Tween.interpolate_property(self, 'modulate', modulate, COLOR_TRANSPARENT, TRANSITION_DURATION, Tween.TRANS_LINEAR, Tween.EASE_IN)
	$Tween.start()

func _on_pressed():
	emit_signal("touched", self)
	get_tree().set_input_as_handled()
