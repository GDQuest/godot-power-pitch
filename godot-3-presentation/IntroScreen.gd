extends Container

const DEBUG_TIME_MULTIPLIER = 0.6
export(bool) var DEBUG = false

var fade_duration = 1.0

var text_lines = [
	'Coucou',
	'Nous allons bientôt démarrer',
	'Cela ne prendra pas longtemps',
	'...',
	'Ayez confiance',
	'...',
	'Oups, il semble que l\'on ait un petit problème',
	'C\'est un peu plus long que prévu, mais cela ne devrait plus trop tarder',
	'...',
	'Tout ceci est parfaitement normal',
	'...',
	'Faisons comme s\'il ne s\'était rien passé',
	'On reprend à zéro?'
]

var current_line_id = 0
var lines_count = len(text_lines)

var color_opaque = null
var color_transparent = null

func _ready():
	if DEBUG:
		$Timer.wait_time *= DEBUG_TIME_MULTIPLIER
		fade_duration *= DEBUG_TIME_MULTIPLIER

	$TrailingSquares.emitting = false
	$Text/Main.text = text_lines[current_line_id]

	color_opaque = $Text/Main.modulate
	color_transparent = Color(color_opaque.r, color_opaque.g, color_opaque.b, 0.0)

	$Text/Main.modulate = color_transparent
	$Tween.interpolate_property($Text/Main, 'modulate', color_transparent, color_opaque, fade_duration, Tween.TRANS_QUINT, Tween.EASE_IN)
	$Tween.start()


func _input(event):
	if event.is_action_pressed('ui_accept'):
		get_tree().change_scene('res://Presentation.tscn')


func go_to_next_line():
	current_line_id += 1
	if current_line_id >= lines_count:
		current_line_id = 0
	
	$Text/Main.text = text_lines[current_line_id]



func _on_Timer_timeout():
	$Timer.stop()
	$Tween.interpolate_property($Text/Main, 'modulate', color_opaque, color_transparent, fade_duration, Tween.TRANS_QUINT, Tween.EASE_OUT)
	$Tween.start()



func _on_Tween_tween_completed( object, key ):
	if $Text/Main.modulate.a == 0.0:
		go_to_next_line()
		$Tween.interpolate_property($Text/Main, 'modulate', color_transparent, color_opaque, fade_duration, Tween.TRANS_QUINT, Tween.EASE_IN)
		$Tween.start()
		if text_lines[current_line_id].begins_with('Oups'):
			$TrailingSquares.emitting = true
		if text_lines[current_line_id] == '...':
			$TextTween.interpolate_property($Text/Main, 'percent_visible', 0.0, 1.0, fade_duration * 4, Tween.TRANS_LINEAR, Tween.EASE_IN)
			$TextTween.start()
		if current_line_id == 0:
			$TrailingSquares.emitting = false
	elif $Text/Main.modulate.a == 1.0:
		$Timer.start()
		

func _on_TextTween_tween_completed( object, key ):
	pass # replace with function body
