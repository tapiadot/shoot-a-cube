extends Node2D

onready var timer: = $Timers

var Obstacle: = preload("res://src/Levels/Obstacle.tscn")

const obstacle_height = 400

func _ready() -> void:
	randomize()

func _on_Timer_timeout() -> void:
	spawn_obstacle()

func spawn_obstacle():
	var obstacle: = Obstacle.instance()
	add_child(obstacle)
	var height = (randi() % 640 + 256)
	obstacle.scale.y = height / obstacle_height
	print(height)

	print(obstacle.scale)
	randomize()
	if randi() % 2:
		obstacle.position.y = height / 2 - 200
#		obstacle.position.y = 0
	else:
		obstacle.position.y = 1024 - height / 2 + 200
#		obstacle.position.y = 1024
	print(obstacle.position)
func start():
	timer.start()

func stop():
	timer.stop()

