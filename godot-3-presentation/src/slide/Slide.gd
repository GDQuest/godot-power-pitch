extends Control


onready var player: = $AnimationPlayer


func play(anim_name: String) -> void:
	player.play(anim_name)
	yield(player, "animation_finished")
