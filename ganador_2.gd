extends Node2D



func _on_volver_pressed() -> void:
	get_tree().change_scene_to_file("res://escena/ping_pong.tscn")
	


func _on_salir_pressed() -> void:
	get_tree().change_scene_to_file("res://inicio.tscn")
