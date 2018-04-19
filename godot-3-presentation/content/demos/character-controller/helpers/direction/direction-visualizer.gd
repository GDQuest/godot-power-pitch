extends Position2D

export(Vector2) var scale_range = Vector2(0.5, 1.0)
var max_speed = 0.0
var last_player_speed = 0

const SCALE_RATE = 2.6

var arrow_start_scale = 0.0
var arrow_target_scale = 0.0
var arrow_scale_duration = 0.0

func _ready():
	var player_node = $'..'
	player_node.connect("direction_changed", self, '_on_Player_direction_changed')
	player_node.connect("speed_updated", self, '_on_Player_speed_updated')

	max_speed = player_node.MAX_RUN_SPEED
	arrow_target_scale = player_node.speed / max_speed
	$Arrow.scale = Vector2(scale_range.x, scale_range.x)
	set_process(false)


func _on_Player_direction_changed(direction):
	rotation = direction.angle()
	if direction == Vector2(0, -1):
		visible = false
	else:
		visible = true


func _on_Player_speed_updated(speed):
	if speed == last_player_speed:
		return
	arrow_start_scale = $Arrow.scale.x
	arrow_target_scale = lerp(scale_range.x, scale_range.y, float(speed)/max_speed)
	arrow_scale_duration = abs(arrow_target_scale - arrow_start_scale) / SCALE_RATE

	var start_scale = Vector2(arrow_start_scale, arrow_start_scale)
	var target_scale = Vector2(arrow_target_scale, arrow_target_scale)

	$Tween.remove_all()
	$Tween.interpolate_property($Arrow, 'scale', start_scale, target_scale, arrow_scale_duration, Tween.TRANS_LINEAR, Tween.EASE_IN)
	$Tween.start()

	last_player_speed = speed
