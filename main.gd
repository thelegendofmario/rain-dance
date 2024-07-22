extends Node2D
@export var rainscene : PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_rain_timer_timeout():
	var r = rainscene.instantiate()
	
	var rain_spawn_location = $RainPath/RainSpawn
	rain_spawn_location.progress_ratio = randf()
	
	
	
	r.position = rain_spawn_location.position
	
	#var velocity = Vector2(randf_range(150.0, 250.0), 0.0)
	
	add_child(r)
