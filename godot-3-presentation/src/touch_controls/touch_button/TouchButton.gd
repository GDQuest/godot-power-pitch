extends Button


signal touched(button)

onready var tween: = $Tween

const COLOR_TRANSPARENT: = Color("#00ffffff")
const COLOR_OPAQUE: = Color("#ffffffff")

export var transition_duration: = 0.2


func _ready() -> void:
	modulate = COLOR_TRANSPARENT


func _on_mouse_entered() -> void:
	tween.interpolate_property(self, 'modulate', modulate, COLOR_OPAQUE, transition_duration, Tween.TRANS_LINEAR, Tween.EASE_IN)
	tween.start()


func _on_mouse_exited() -> void:
	tween.interpolate_property(self, 'modulate', modulate, COLOR_TRANSPARENT, transition_duration, Tween.TRANS_LINEAR, Tween.EASE_IN)
	tween.start()


func _on_pressed() -> void:
	emit_signal("touched", self)
	get_tree().set_input_as_handled()
