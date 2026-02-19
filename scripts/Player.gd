extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -500.0
const GRAVITY = 980.0

var jump_right = preload("res://assets/images/jump1.png")
var jump_left = preload("res://assets/images/jump0.png")

var bubble_scene = preload("res://scenes/bubble.tscn")

var last_direction = 1

var is_firing = false


func _physics_process(delta):
	if Input.is_action_just_pressed("restart"):
		GameManager.reset_game()
		get_tree().call_deferred("reload_current_scene")
	if not is_on_floor():
		velocity.y +=GRAVITY*delta
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		#TODO Add Jump Sound
	var direction = Input.get_axis("move_left","move_right")
	if direction:
		velocity.x = direction * SPEED
		last_direction = direction
		if direction < 0:
			if is_on_floor():
				$AnimatedSprite2D.play("run_left")
			else:
				$AnimatedSprite2D.play("jump_left")
		else:
			if is_on_floor():
				$AnimatedSprite2D.play("run_right")
			else:
				$AnimatedSprite2D.play("jump_right")
				
	else:
		velocity.x = move_toward(velocity.x,0,SPEED)
		if not is_firing: 
			$AnimatedSprite2D.play("default")
		
	if Input.is_action_just_pressed("fire"):
		is_firing = true
		if last_direction < 0:
			$AnimatedSprite2D.play("fire_left")
		else:
			$AnimatedSprite2D.play("fire_right")
		var b = bubble_scene.instantiate()
		b.position = position
		b.direction = last_direction
		get_parent().add_child(b)
		await get_tree().create_timer(0.4).timeout
		is_firing = false
	move_and_slide()
