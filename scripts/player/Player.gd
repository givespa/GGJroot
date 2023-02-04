extends KinematicBody2D

var _position = Vector2(0,0)
export(int) var speed = 150
export(int) var life = 3

func move_controllers():
	
	if Input.is_action_pressed("right"):
		_position.x = speed
		$AnimatedSprite.flip_h = false
		$AnimatedSprite.play("run")
	
	if Input.is_action_pressed("left"):
		_position.x = -speed
		$AnimatedSprite.flip_h = true
		$AnimatedSprite.play("run")
	
	if Input.is_action_pressed("up"):
		_position.y = -speed
		$AnimatedSprite.play("run")

	if Input.is_action_pressed("down"):
		_position.y = speed
		$AnimatedSprite.play("run")

	if !Input.is_action_pressed("right") and !Input.is_action_pressed("left") and !Input.is_action_pressed("up") and !Input.is_action_pressed("down"):
		$AnimatedSprite.play("idle")
	
	_position = move_and_slide(_position, Vector2.UP)
	_position.x = lerp(_position.x, 0, 0.1)
	_position.y = lerp(_position.y, 0, 0.1)
	
#	// ------------------ function end -----------------

func _physics_process(delta):
	move_controllers()
