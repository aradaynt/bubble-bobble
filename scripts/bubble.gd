extends Area2D

const SPEED = 400.0
var direction = 1
var lifetime = 0.0
var is_trapped = false

func _ready():
	$AnimatedSprite2D.play("default")
	
func _process(delta):
	lifetime+=delta
	if lifetime < 0.5:
		position.x += SPEED * direction*delta
	else:
		if !is_trapped:
			$AnimatedSprite2D.play("float")
		position.y-=50*delta
	if lifetime > 5.0:
		$AnimatedSprite2D.play("pop")
		await $AnimatedSprite2D.animation_finished
		queue_free()

func _on_body_entered(body: Node2D) -> void:
	if not is_trapped:
		if body.is_in_group("enemies"):
			trap_enemy(body)
	else:
		if body.name == "Player":
			pop_bubble()
		
func trap_enemy(enemy_node):
	is_trapped = true
	
	enemy_node.queue_free()
	
	$AnimatedSprite2D.play("trapped")
	
	lifetime = 0.5
	
func pop_bubble():
	$CollisionShape2D.set_deferred("disabled",true)
	if has_node("/root/GameManager"):
		GameManager.add_score(100)
	$PopSound.play()
	$AnimatedSprite2D.play("pop")
	await $AnimatedSprite2D.animation_finished
	queue_free()
