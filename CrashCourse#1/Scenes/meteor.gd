extends Area2D

func _ready():
	print("Meteor created")
	var rng: RandomNumberGenerator = RandomNumberGenerator.new()
	var width = get_viewport().get_visible_rect().size[0]
	
	var random_x = rng.randi_range(0, width)
	var random_y = rng.randi_range(-150, -50)
	position = Vector2(random_x, random_y)
	print(position)

func _process(delta):
	position += Vector2(0, 1) * 400 * delta
	
func _on_body_entered(body):
	pass
