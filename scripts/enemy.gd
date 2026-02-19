extends CharacterBody2D

const SPEED = 100.0
const GRAVITY = 980.0
var direction = -1


func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	velocity.x = direction*SPEED

	move_and_slide()
	
	if is_on_wall():
		direction *= -1
		$AnimatedSprite2D.flip_h = (direction > 0)


func _on_hit_box_body_entered(body):
	if body.name == "Player":
		print("Player Hit!")
		#TODO Subtract health/game over
		GameManager.call_deferred("lose_life")
