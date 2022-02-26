extends Node2D

var dictionary_open = false

onready var timer = get_node("Timer")
var time_ran_out = false
var sprites = ["ancient sword", "ancient bow", "genie's oil lamp", "mona lisa's picture", "diamond ring", "diamond necklace", "cup", "axe", "vase", "lamp", "candlestick", "painting", "chandelier"]

var first_time = true
func _physics_process(delta):
	if get_tree().current_scene.name == "Artifacts_book":
		dict_func()
	

func _on_dictionary_button_pressed():
	get_tree().change_scene_to(load("res://Dictonary.tscn"))
		
func dict_func():
	if first_time:
		time_ran_out = true
		get_node("page 1").show()
		timer.set_wait_time(15)
		timer.start()
		first_time = false
	get_node("timer left label").text = str(int(timer.get_time_left()))

	first_time = false
	
	for sprite in sprites:
		get_node(sprite).dictionary_story()
	
	

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
	
func _on_Timer_timeout():
	timer.stop()
	get_node("timer left label").hide()
	get_node("page 1").hide()
	get_node("page 2").hide()
	get_node("page 3").hide()
	
	
	get_node("buy").show()
	get_node("DontBuy").show()



func _on_buy_pressed():
	var file = File.new()
	file.open("res://is_the_same.txt", File.READ)
	var is_the_same = file.get_as_text()
	file.close()
	
	if is_the_same == "True":
		print("you won")
	else:
		print("you lost")

	
