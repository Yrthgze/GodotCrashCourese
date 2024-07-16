extends Area2D

func _ready():
	print("Meteor created")
	var rng: RandomNumberGenerator = RandomNumberGenerator.new()
	var width = get_viewport().get_visible_rect().size[0]
	
	var random_x = 0# rng.randi_range(30, width-30)
	print(random_x)
	var random_y = rng.randi_range(-150, -50)
	position = Vector2(random_x, random_y)

func _process(delta):
	position += Vector2(0, 1) * 400 * delta
	
func _on_body_entered(body):
	pass
