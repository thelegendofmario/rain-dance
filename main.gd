extends Node2D
@export var rainscene : PackedScene
var time_alive = 0
var twee = 0.0001
# Called when the node enters the scene tree for the first time.
func _ready():
	
	$SecTimer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	$Camera2D/CanvasLayer/Label.text = str(Engine.get_frames_per_second(), " ", $RainTimer.wait_time, " ", $SecTim2.time_left)
	$Camera2D/CanvasLayer/Label2.text = str(time_alive)
	$RainTimer.wait_time = lerpf($RainTimer.wait_time, 0.00000001, twee)
	
	#if time_alive % 5:
		#$RainTimer.wait_time / 2

func _on_rain_timer_timeout():
	
	var r = rainscene.instantiate()
	
	var rain_spawn_location = $RainPath/RainSpawn
	rain_spawn_location.progress_ratio = randf()
	
	r.position = rain_spawn_location.position
	
	#var velocity = Vector2(randf_range(150.0, 250.0), 0.0)
	
	add_child(r)


func _on_sec_timer_timeout():
	time_alive += 1
	
	$SecTimer.start()

func _on_sec_tim_2_timeout():
	twee *= 5
	pass
