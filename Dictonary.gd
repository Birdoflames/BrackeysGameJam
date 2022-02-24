extends Node2D

var dictionary_open = false

func _physics_process(delta):
	get_node("ancient bow Label").show()
		
		
func _on_dictionary_button_pressed():
	get_tree().change_scene_to(load("res://Dictonary.tscn"))
	var sprites = ["ancient sword", "ancient bow", "genie's oil lamp", "Mona Lisa's picture", "diamond ring", "diamond necklace", "cup", "axe", "vase", "lamp", "candlestick", "painting", "chandelier"]
	
	for sprite in sprites:
		get_parent().get_node("Bow").dictionary_story()
		

	
#	timer.set_wait_time(2)
#	timer.start()
#	print(timer.get_time_left())

#func _on_Timer_timeout():

