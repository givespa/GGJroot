extends KinematicBody2D

var velocity = Vector2(0,0)
const SPEED = 150
export var life = 3

func move_controllers():
	
	if Input.is_action_pressed("right"):
		velocity.x = SPEED 
		$AnimatedSprite.flip_h = false
		$AnimatedSprite.play("run")

	if Input.is_action_pressed("left"):
		velocity.x = -SPEED
		$AnimatedSprite.flip_h = true
		$AnimatedSprite.play("run")
	if Input.is_action_pressed("up"):
		velocity.y = -SPEED
		$AnimatedSprite.play("run")
	if Input.is_action_pressed("down"):
		velocity.y = SPEED
		$AnimatedSprite.play("run")

	if !Input.is_action_pressed("right") and !Input.is_action_pressed("left") and !Input.is_action_pressed("up") and !Input.is_action_pressed("down"):
		$AnimatedSprite.play("idle")
		
	velocity = move_and_slide(velocity, Vector2.UP)
	velocity.x = lerp(velocity.x, 0, 0.1)
	velocity.y = lerp(velocity.y, 0, 0.1)
	
#	// ------------------ function end -----------------

func _physics_process(delta):
	move_controllers()
