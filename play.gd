extends Control

func _ready():
	print(get_node("Label").get_text())
	
func _on_Play_pressed():
	get_tree().change_scene_to(load("res://Game_Scene.tscn"))
	
	

	
