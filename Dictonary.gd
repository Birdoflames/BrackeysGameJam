extends Node2D

var time = 0
var timer_on = false

func _proccess(delta):		
	print("hi")

onready var timer = get_node("ancient bow Label/Timer")

func _on_dictionary_button_pressed():
	get_tree().change_scene_to(load("res://Dictonary.tscn"))
#	timer.set_wait_time(2)
#	timer.start()
#	print(timer.get_time_left())

func _on_Timer_timeout():
	get_node("ancient bow Label").show()
