extends CanvasLayer

@export var level_scene: PackedScene

# Called every frame. 'delta' is the elapsed time since the previous frame.
func restart_game():
	get_tree().change_scene_to_packed(level_scene)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_pressed("space"):
		restart_game()
