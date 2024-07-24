extends CanvasLayer

# Called every frame. 'delta' is the elapsed time since the previous frame.
func restart_game():
	get_tree().change_scene_to_file("res://Scenes/level.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_pressed("space"):
		restart_game()
