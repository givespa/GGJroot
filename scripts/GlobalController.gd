extends Node

func action_controller():
	if Input.is_key_pressed(16777217):
		get_tree().quit()

func _process(delta):
	action_controller()
