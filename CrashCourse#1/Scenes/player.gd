extends CharacterBody2D
signal Laser(pos)
var player_node = ""
# The ':=' sets de type of the base_speed to the type of the value assigned
@export var base_speed := 500
var laser_ready = true
# Called when the node enters the scene tree for the first time.
func _ready():
	player_node = $PlayerImage

func shoot():
	Laser.emit($LaserStartPos.global_position)
	$LaserSound.play()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * base_speed
	move_and_slide()
	if Input.is_action_just_pressed("shoot") and laser_ready:
		shoot()
		laser_ready = false
		$LaserTimer.start()
		
func _on_laser_timer_timeout():
	laser_ready = true
