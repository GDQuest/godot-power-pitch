tool
extends Label

signal visibility_updated(visible)

func display(string):
	visible = string != ""
	if not visible:
		return
	text = string
	$Shadow.text = string

func _on_visibility_changed():
	emit_signal("visibility_updated", visible)
