extends CanvasLayer
var health:int = 5
var time_elapsed:int = 0
func set_health(new_health):
	var left_health = health - new_health
	var life_childs = $MarginContainer2/HBoxContainer.get_children()
	for child in life_childs:
		if left_health == 0:
			break
		child.hide()
		left_health -=1 


func _on_score_timer_timeout():
	time_elapsed += 1
	$MarginContainer/Label.text = str(time_elapsed)
	Global.score = time_elapsed
