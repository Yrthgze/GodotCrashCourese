extends Node2D

var meteor_scene: PackedScene = load("res://Scenes/meteor.tscn")
var meteor_list = ""
# Called when the node enters the scene tree for the first time.
func _ready():
	meteor_list = $Meteors
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_meteor_timer_timeout():
	var new_meteor = meteor_scene.instantiate()
	meteor_list.add_child(new_meteor)
