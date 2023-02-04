extends KinematicBody2D

var velocity = Vector2(0,0)
const SPEED = 150
export var life = 3

func _physics_process(delta):
	if Input.is_action_pressed("right"):
		print("RIGHT")
		velocity.x = SPEED 
		$AnimatedSprite.flip_h = false
		$AnimatedSprite.play("run")
		#if sign($Position2D.position.x) == -1:
			#$Position2D.position.x *= -1
			
	elif Input.is_action_pressed("left"):
		print("LEFT")
		velocity.x = -SPEED
		$AnimatedSprite.flip_h = true
		$AnimatedSprite.play("run")
			
	elif Input.is_action_pressed("up"):
		print("UP")
		velocity.y = -SPEED
		$AnimatedSprite.play("run")
			
	elif Input.is_action_pressed("down"):
		print("DOWN")
		velocity.y = SPEED
		$AnimatedSprite.play("run")
	else:
		$AnimatedSprite.play("idle")
		
	velocity = move_and_slide(velocity, Vector2.UP)
	velocity.x = lerp(velocity.x, 0, 0.1)
	velocity.y = lerp(velocity.y, 0, 0.1)



