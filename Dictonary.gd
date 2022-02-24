extends Node2D

var dictionary_open = false


func _physics_process(delta):
	if get_tree().current_scene.name == "Artifacts_book":
		dict_func()
	

func _on_dictionary_button_pressed():
	get_tree().change_scene_to(load("res://Dictonary.tscn"))
		
func dict_func():
	get_parent().get_node("Artifacts_book").show()
	var sprites = ["ancient sword", "ancient bow", "genie's oil lamp", "Mona Lisa's picture", "diamond ring", "diamond necklace", "cup", "axe", "vase", "lamp", "candlestick", "painting", "chandelier"]
	
	for sprite in sprites:
		print(get_parent())
		get_parent().get_node("Bow").dictionary_story()
	
#	timer.set_wait_time(2)
#	timer.start()
#	print(timer.get_time_left())

#func _on_Timer_timeout():




func _on_page_1_button_pressed():
	get_parent().get_node("Artifacts_book/page 1").show()
	get_parent().get_node("Artifacts_book/page 2").hide()
	get_parent().get_node("Artifacts_book/page 3").hide()
	
func _on_page_2_button_pressed():
	get_parent().get_node("Artifacts_book/page 2").show()
	get_parent().get_node("Artifacts_book/page 1").hide()
	get_parent().get_node("Artifacts_book/page 3").hide()

func _on_page_3_button_pressed():
	get_parent().get_node("Artifacts_book/page 3").show()
	get_parent().get_node("Artifacts_book/page 2").hide()
	get_parent().get_node("Artifacts_book/page 1").hide()


