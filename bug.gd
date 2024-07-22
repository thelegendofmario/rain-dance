extends CharacterBody2D

@export var speed = 200

var target = position



func _physics_process(delta):
	$AnimatedSprite2D.play()
	velocity = position.direction_to(target) * speed
	#look_at(target)
	if Input.is_action_pressed("click"):
		target = get_global_mouse_position()
	if velocity.x != 0:
			$AnimatedSprite2D.flip_h = velocity.x > 0
	if position.distance_to(target) > 10:
		move_and_slide()
