extends Area2D

signal body_fell

var overlapping_bodies_ids = []
var fallen_bodies = []


func _ready():
	self.connect('body_entered', self, '_on_body_entered')
	self.connect('body_exited', self, '_on_body_exited')


func _on_body_entered(body):
	if not body.is_in_group('character'):
		return
	overlapping_bodies_ids.append(body)


func _on_body_exited(body):
	overlapping_bodies_ids.remove(overlapping_bodies_ids.find(body))

	var rid_position = fallen_bodies.find(body.get_rid())
	if rid_position == -1:
		return
	fallen_bodies.remove(rid_position)


func _physics_process(delta):
	for body in overlapping_bodies_ids:
		if body.state == body.JUMP:
			continue

		var body_rid = body.get_rid()
		if body_rid in fallen_bodies:
			continue

		fallen_bodies.append(body_rid)
		emit_signal('body_fell', body_rid)