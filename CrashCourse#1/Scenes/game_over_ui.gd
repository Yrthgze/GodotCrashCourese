extends CanvasLayer

@export var level_scene: PackedScene

func _ready():
	$CenterContainer/VBoxContainer/Score.text = "Score: " + str(Global.score)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func restart_game():
	get_tree().change_scene_to_packed(level_scene)

func _input(event):
	if event.is_action_pressed("space"):
		restart_game()
