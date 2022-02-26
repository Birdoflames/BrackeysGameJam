extends Node

var item_story = ""

func story_decider():
	item_story = ""

	var sprites = ["ancient sword", "ancient bow", "genie's oil lamp", "mona lisa's picture", "diamond ring", "diamond necklace", "cup", "axe", "vase", "lamp", "candlestick", "painting", "chandelier"]
	var sellers = ["Dhedrig Li", "Frendille Astley", "Tilpoth RockStar", "Cudro Young", "Coby Bond", "David Smith"]
	
	var rnd = RandomNumberGenerator.new()
	rnd.randomize()
	

		
	var chosen_sprite = sprites[rnd.randi_range(0, 12)]
	var chosen_seller = sellers[rnd.randi_range(0, 5)]
	
	if chosen_sprite == "mug":
		if rnd.randi_range(0, 3) == 0:
			chosen_sprite = "mug"
		else:
			chosen_sprite = sprites[rnd.randi_range(0, 12)]
	
	var get_story = get_node("Artifacts_book/"+chosen_sprite).story()
	
	get_node("Artifacts_book/"+chosen_sprite).show()

	get_node("name label").text = chosen_sprite
	get_node("sellers name").text = chosen_seller
	
	var chosen_story =  rnd.randi_range(0, 2)
	print(chosen_story)
	if chosen_story == 0:
		item_story = get_story
	else:
		item_story = get_node("Artifacts_book/"+chosen_sprite).story()
		
	get_node("item story").text = item_story
	
	var is_the_same = get_story == item_story 
	
	var file = File.new()
	file.open("res://is_the_same.txt", File.WRITE)
	file.store_string(str(is_the_same))
	file.close()
	print(item_story+"\n\n"+get_story)

func _ready():
	story_decider()

