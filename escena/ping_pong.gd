extends Node2D

var puntaje_p1 = 0
var puntaje_p2 = 0



func _on_pd_body_entered(body):
	if body.is_in_group("pelota"):
		puntaje_p1 += 1
		$"puntaje p1".text = str(puntaje_p1)
		reset()

func _on_pi_body_entered(body):
	if body.is_in_group("pelota"):
		puntaje_p2 += 1
		$"puntaje p2".text = str(puntaje_p2)
		reset()
		
func reset():
	var random_x_direction = 1 if randf() < 0.5 else -1
	var random_y_direction = 1 if randf() < 0.5 else -1
	var initial_speed = 200
	
	$pelota.velocity = Vector2(initial_speed * random_x_direction, initial_speed * random_y_direction)
	$pelota.position = Vector2(576, 320) 


func _on_timer_timeout():
	if puntaje_p1 > puntaje_p2 and puntaje_p1 >= 5:
		get_tree().change_scene_to_file("res://ganador_1.tscn")
		
	elif puntaje_p2 > puntaje_p1 and puntaje_p2 >= 5:
		get_tree().change_scene_to_file("res://ganador_2.tscn")
