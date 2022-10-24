extends Node2D

onready var timer: = $Timer

var Obstacle: = preload("res://src/Levels/Obstacle.tscn")
var Enemy: = preload("res://src/Actors/Enemy.tscn")

const obstacle_height: = 400

func _ready() -> void:
	randomize()

func _on_Timer_timeout() -> void:
	spawn_obstacle()

func spawn_obstacle():
	var obstacle: = Obstacle.instance()
	var enemy: = Enemy.instance()
	add_child(obstacle)
	add_child(enemy)
	var height = (randi() % 640 + 256)
	obstacle.scale.y = height / obstacle_height
	randomize()
	if randi() % 2:
		obstacle.position.y = height / 2 - 200
		enemy.position.y = obstacle.position.y + randi() % 200 + 500
	else:
		obstacle.position.y = 1024 - height / 2 + 200
		enemy.position.y = obstacle.position.y - randi() % 200 - 500

func start():
	timer.start()

func stop():
	timer.stop()

