class_name Player extends SpriteBase

var motion = true

func motion_controller():
	
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
	
#// ------------------ function end -----------------

func action_controller():
	if Input.is_key_pressed(32):
		motion = false
		$AnimatedSprite.play("punch")
	else:
		motion = true
#// ------------------ function end -----------------

func enemy_collision():
	if Input.is_action_pressed("right"):
	 life = life - 1
	
func _physics_process(delta):
	if self.activatedController:
		if motion:
			motion_controller()
		action_controller()
