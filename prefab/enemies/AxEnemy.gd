class_name AxEnemy extends SpriteBase

#func _ready():
#	$AnimatedSprite.play(self.animatedSprite)
##	direction = Vector2.RIGHT if startDirection == Direction.RIGHT else Vector2.LEFT
#	$GoalDetector.connect("area_entered", self, "on_goal_entered")

#var SPEED = 25
#var velocity = Vector2.ZERO
#var player = null
#
#func _physics_process(delta):
#    velocity = Vector2.ZERO
#    if player:
#        velocity = position.direction_to(player.position) * SPEED
#    velocity = move_and_slide(velocity)
#
#func _on_Area2D_body_entered(body):
#    print("Perseguir")
#    player = body
#
#func _on_Area2D_body_exited(body):
#    print("Fuera") 
#    player = null
