extends Node

var item_story = ""


func story_decider():
	item_story = ""

	var sprites = ["ancient sword", "ancient bow", "genie's oil lamp", "mona lisa's picture", "diamond ring", "diamond necklace", "cup", "axe", "vase", "lamp", "candlestick", "painting", "chandelier"]

	var rnd = RandomNumberGenerator.new()
	rnd.randomize()
	var chosen_one = sprites[rnd.randi_range(0, 12)]

	var get_story = get_node("Artifacts_book/"+chosen_one ).story()

	get_node("Artifacts_book/"+chosen_one).show()

	get_node("name label").text = chosen_one

	var chosen_story =  rnd.randi_range(0, 2)
	if chosen_story == 0:
		item_story = get_story
	else:
		item_story = get_node("Artifacts_book/"+chosen_one).story()
		get_node("item story").text = item_story


func _ready():
	story_decider()




