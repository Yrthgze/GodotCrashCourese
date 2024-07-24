extends Node2D

var meteor_scene: PackedScene = load("res://Scenes/meteor.tscn")
var laser_scene: PackedScene = load("res://Scenes/laser.tscn")
var meteor_list = ""
var laser_list = ""
var laser_ready = true
var health:int = 5

# Called when the node enters the scene tree for the first time.
func _ready():
	meteor_list = $Meteors
	laser_list = $Lasers
	$ReadyAudio.play()

func _on_meteor_timer_timeout():
	var new_meteor = meteor_scene.instantiate()
	meteor_list.add_child(new_meteor)
	
	new_meteor.connect('collision', _on_meteor_collision)

func _manage_health():
	if health <= 0:
		get_tree().change_scene_to_file("res://Scenes/game_over_ui.tscn")
	elif  health == 1:
		$ShieldDown.play()

func _on_meteor_collision():
	health -= 1
	get_tree().call_group('ui', 'set_health', health)
	_manage_health()

func _on_player_laser(pos):
	var new_laser = laser_scene.instantiate()
	laser_list.add_child(new_laser)
	new_laser.position = pos
