extends Control


func _on_Play_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene_to(load("res://Scenes/Scene_Handler.tscn"))


func _on_Credits_pressed():
	pass # Replace with function body.
