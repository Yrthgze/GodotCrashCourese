extends Node2D

var meteor_scene: PackedScene = load("res://Scenes/meteor.tscn")
var laser_scene: PackedScene = load("res://Scenes/laser.tscn")
var meteor_list = ""
var laser_list = ""
var laser_ready = true
# Called when the node enters the scene tree for the first time.
func _ready():
	meteor_list = $Meteors
	laser_list = $Lasers
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_meteor_timer_timeout():
	var new_meteor = meteor_scene.instantiate()
	meteor_list.add_child(new_meteor)

func _on_player_laser(pos):
	var new_laser = laser_scene.instantiate()
	laser_list.add_child(new_laser)
	new_laser.position = pos
