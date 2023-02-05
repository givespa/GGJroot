class_name AxEnemy extends SpriteBase

var player = null
var motion = Vector2.ZERO

func _physics_process(delta):
	motion = Vector2.ZERO
	
	if player != null:
		motion = position.direction_to(player.position)
	else:
		motion = Vector2.ZERO
	
	motion = motion.normalized() * speed
	motion = move_and_collide(motion)
	


func _on_Area2D_body_entered(body):
	if body != self:
		player = body


func _on_Area2D_body_exited(body):
	player  = null
