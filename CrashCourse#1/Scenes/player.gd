extends CharacterBody2D

var player_node = ""
# The ':=' sets de type of the base_speed to the type of the value assigned
@export var base_speed := 500
# Called when the node enters the scene tree for the first time.
func _ready():
	player_node = $PlayerImage

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * base_speed
	move_and_slide()

