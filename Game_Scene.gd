extends Node

var item_story = ""


func story_decider():
	item_story = ""

	var sprites = ["ancient sword", "ancient bow", "genie's oil lamp", "Mona Lisa's picture", "diamond ring", "diamond necklace", "cup", "axe", "vase", "lamp", "candlestick", "painting", "chandelier"]

	var rnd = RandomNumberGenerator.new()
	rnd.randomize()
	var chosen_one = sprites[rnd.randi_range(0, 12)]

	var get_story = get_node("Bow").story()
	print(get_node("Bow").story())

	get_node("Bow").show()

	name = chosen_one

	var chosen_story =  rnd.randi_range(0, 2)
	if chosen_story == 0:
		item_story = get_story
	else:
		item_story = load("res://"+"Bow"+".gd").story()
		get_node("item story").text = item_story


func _ready():
	story_decider()


