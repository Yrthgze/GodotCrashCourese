extends Node2D

var player_node = ""
var speed: Vector2 = Vector2(0, 0)
# The ':=' sets de type of the base_speed to the type of the value assigned
@export var base_speed := 300
# Called when the node enters the scene tree for the first time.
func _ready():
	player_node = $PlayerImage

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var direction = Input.get_vector("left", "right", "up", "down")
	speed = direction * base_speed
	#position += Vector2(1, 0) * 100 * delta
	player_node.position += speed * delta
	speed = Vector2(0, 0)

