extends Node

var score = 0
var lives = 3

func add_score(points):
	score+=points
	print("Score: ", score)

func lose_life():
	lives-=1
	print("Lives left: ", lives)
	
	if lives <=0:
		game_over()
	

func game_over():
	print("GAME OVER")
	get_tree().change_scene_to_file("res://scenes/GameOver.tscn")

func reset_game():
	score = 0
	lives = 3
