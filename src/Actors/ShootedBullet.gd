extends KinematicBody2D
class_name Bullet

var velocity: = Vector2(1, 0)
var speed: = 500

func _physics_process(delta: float) -> void:
	var collision_info: = move_and_collide(velocity.normalized() * delta * speed)
