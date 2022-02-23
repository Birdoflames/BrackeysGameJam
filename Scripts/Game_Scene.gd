extends Node

var rng = RandomNumberGenerator.new()
var items = []
var current_item

var counter = 0

func _ready():
	items = list_files_in_directory("res://Items")
	get_node("Timer").start(random(10, 11))


func list_files_in_directory(path):
	var files = []
	var dir = Directory.new()
	dir.open(path)
	dir.list_dir_begin()
	
	while true:
		var file = dir.get_next()
		if file == "":
			break
		elif file.ends_with(".tscn"):
			files.append(file)
		
	dir.list_dir_end()
	
	return files


func random(start, end):
	rng.randomize()
	return rng.randi_range(start, end)


func generate_item():
	var chosen_item = items[random(0, len(items) - 1)]
	current_item = chosen_item
	
	var item = load("res://Items/" + str(current_item))
	item = item.instance()
	
	get_node(".").add_child(item)


func set_story(story, prize):
	get_node("GUI/Buying/Text/Story").set_text(story)
	get_node("GUI/Buying/Text/Prize").set_text(prize)


func _on_Buy_pressed():
	if current_item != null:
		var item = load("res://Items/" + str(current_item))
		item = item.instance()

		var item_position = get_node("GUI/Inventory").generate_coords()
		item.set_position(item_position)

		get_node("GUI").add_child(item)
		get_node("Timer").start(random(10, 11))

func _on_DontBuy_pressed():
	get_node("Timer").start(random(10, 11))

func _on_Timer_timeout():
	generate_item()
