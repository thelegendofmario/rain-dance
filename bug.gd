extends CharacterBody2D

@export var speed = 200

func get_input():
	$AnimatedSprite2D.play()
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed

func _physics_process(delta):
	get_input()
	move_and_slide()
