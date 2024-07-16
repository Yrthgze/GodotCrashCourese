extends AnimatedSprite2D
var rng: RandomNumberGenerator = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	var width = get_viewport().get_visible_rect().size[0]
	var height = get_viewport().get_visible_rect().size[1]
	var random_x = rng.randi_range(0, width)
	var random_y = rng.randi_range(0, height)
	position = Vector2(random_x, random_y)
	
	var random_scale = rng.randf_range(0.1,1.2)
	scale = Vector2(random_scale, random_scale)
	speed_scale = rng.randf_range(0.2, 1.4)
	
	play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
