extends Node2D

var speed: = 500

func _physics_process(delta: float) -> void:
	position.x -= speed * delta
	if global_position.x <= -200:
		queue_free()

func _on_Brick_body_entered(body: Node) -> void:
	if body is Player and body.has_method("die"):
		body.die()
