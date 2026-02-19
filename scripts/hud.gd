extends Control

func _process(delta):
	$ScoreLabel.text = "SCORE: " + str(GameManager.score) + "\nLIVES: " +str(GameManager.lives)
