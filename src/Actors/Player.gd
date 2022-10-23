extends KinematicBody2D
class_name Player

export var speed: = Vector2(400.0, 800.0)

var _velocity: = Vector2.ZERO

func _physics_process(delta: float) -> void:
	var direction: = get_direction()
	_velocity = calculate_move_velocity(_velocity, direction, speed)
	move_and_slide(_velocity, direction)

func get_direction() -> Vector2:
	return Vector2(
		0.0,
		Input.get_action_strength("ui_down") -
		Input.get_action_strength("ui_up")
	)

func calculate_move_velocity(
		linear_velocity: Vector2,
		direction: Vector2,
		speed: Vector2
	) -> Vector2:
	var velocity: = linear_velocity
	velocity.y = speed.y * direction.y
	return velocity
