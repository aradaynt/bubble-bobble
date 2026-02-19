extends Node2D

var enemy_scene = preload("res://scenes/enemy.tscn")

@onready var timer = $Timer

func _ready():
	timer.timeout.connect(_on_timer_timeout)
	
func _on_timer_timeout():
	var new_enemy = enemy_scene.instantiate()
	
	var spawn_points = []
	for child in get_children():
		if child is Marker2D:
			spawn_points.append(child)
			
	if spawn_points.size() > 0:
		var random_point = spawn_points.pick_random()
		
		new_enemy.position = random_point.position
		
		get_parent().add_child(new_enemy)
