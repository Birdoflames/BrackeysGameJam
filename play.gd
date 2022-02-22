extends Control



func _on_Play_pressed():
	get_tree().change_scene("res://Game_Scene.tscn")
	load("res://Game_Scene.gd").story_decider()
	

	
