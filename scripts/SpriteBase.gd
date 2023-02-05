class_name SpriteBase extends KinematicBody2D

var _position = Vector2.ZERO
enum Direction {RIGHT, LEFT}
export(Direction) var direction
export(String) var animatedSprite = "idle"
export(bool) var activatedController
export(int) var speed = 150
export(int) var life = 3


func _ready():
	$AnimatedSprite.play(self.animatedSprite)
	$AnimatedSprite.flip_h = true if direction == Direction.RIGHT else false
