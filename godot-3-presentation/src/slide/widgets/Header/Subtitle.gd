tool
extends Label


signal visibility_updated(visible)


func display(string: String) -> void:
	visible = string != ""
	if not visible:
		return
	text = string
	$Shadow.text = string

func _on_visibility_changed() -> void:
	emit_signal("visibility_updated", visible)
