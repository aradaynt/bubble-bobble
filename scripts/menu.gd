extends Control

func _input(event):
	if event.is_action_pressed("fire"):
		get_tree().change_scene_to_file("res://scenes/Main.tscn")
