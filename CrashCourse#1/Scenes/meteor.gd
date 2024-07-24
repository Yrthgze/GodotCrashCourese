extends Area2D
var meteorColors = ["Brown", "Grey"]
var meterSizes = ["big", "med", "small", "tiny"]
var rng: RandomNumberGenerator = RandomNumberGenerator.new()
var speed = rng.randi_range(10, 400)
var rotation_speed = rng.randf_range(-0.1, 0.1)
var direction_change = rng.randf_range(-0.5, 0.5)

signal collision

func select_random_sprite():
	var base_path = "res://kenney_space-shooter-redux/PNG/Meteors/meteor"
	var meteorColor = meteorColors[rng.randi_range(0, meteorColors.size() - 1)]
	var meteorSize = meterSizes[rng.randi_range(0, meterSizes.size() - 1)]
	var sprite_number = 1;
	var final_path = base_path + meteorColor + "_" + meteorSize + str(sprite_number) + ".png"
	$Sprite2D.texture = load(final_path)
	
func _ready():
	select_random_sprite()	
	
	var width = get_viewport().get_visible_rect().size[0]
	var random_x = rng.randi_range(0, width)
	var random_y = rng.randi_range(-150, -50)
	position = Vector2(random_x, random_y)

func _process(delta):
	position += Vector2(direction_change, 1) * speed * delta
	rotation += rotation_speed
	
func _on_body_entered(_body):
	collision.emit()

#laser enter
func _on_area_entered(area):
	area.queue_free()
	queue_free()
