extends Area2D

@onready var speed = randf_range(1,2)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if not $VisibleOnScreenNotifier2D.is_on_screen():
		queue_free()
	position.y += speed
