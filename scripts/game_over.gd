extends Control

func _input(event):
	if event.is_action_pressed("fire"):
		GameManager.reset_game()
		get_tree().change_scene_to_file("res://scenes/Main.tscn")

func _on_button_pressed():
	GameManager.reset_game()
	get_tree().change_scene_to_file("res://scenes/Main.tscn")
	
