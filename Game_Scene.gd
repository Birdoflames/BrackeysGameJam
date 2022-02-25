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
	
	var get_story = get_node("Artifacts_book/"+chosen_sprite).story()

	get_node("Artifacts_book/"+chosen_sprite).show()

	get_node("name label").text = chosen_sprite
	get_node("sellers name").text = chosen_seller
	
	var chosen_story =  rnd.randi_range(0, 2)
	if chosen_story == 0:
		item_story = get_story
	else:
		item_story = get_node("Artifacts_book/"+chosen_sprite).story()
		get_node("item story").text = item_story
	

func _ready():
	story_decider()

onready var timer = get_node("Timer")
var first_time = true

func _process(delta):
	if get_tree().current_scene.name == "Artifacts_book":
		if first_time:
			timer.set_wait_time(15)
			timer.start()
			first_time = false
		get_node("Artifacts_book/timer left label").text = timer.get_time_left()
	
func _on_Timer_timeout():
	get_tree().change_scene_to(load("res://Game_Scene.tscn"))
	get_node("dictionary button").hide()
	get_node("Buy").show()
	get_node("DontBuy").show()
	first_time = true


