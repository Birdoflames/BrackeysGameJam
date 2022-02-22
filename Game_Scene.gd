extends Node

var item_story = ""
var sprites = ["ancient sword", "ancient bow", "genie's oil lamp", "Mona Lisa's picture", "diamond ring", "diamond necklace", "cup", "axe", "vase", "lamp", "candlestick", "painting", "chandelier"]
func story_decider():
	
	var rnd = RandomNumberGenerator.new()
	rnd.randomize()
	var chosen_one = sprites[rnd.randi_range(0, 12)]
	
	var get_story = load("res//"+chosen_one+".gd").story
	name = chosen_one
	
	var chosen_story =  rnd.randi_range(0, 2)
	if chosen_story == 0:
		item_story = get_story
	else:
		item_story = load("res//"+chosen_one+".gd").get_story

	get_tree().get_node("res://name Label.gd").set_name_text(item_story)
			
	

	