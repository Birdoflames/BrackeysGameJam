extends Node

var rng = RandomNumberGenerator.new()
var items = []
var current_item

func _ready():
	items = list_files_in_directory("res://Items")

func _process(delta):
	if Input.is_action_just_pressed("ui_up"):
		generate_item()

func random(start, end):
	rng.randomize()
	return rng.randi_range(start, end)

#adds all .tscn to an array
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

#genrates a random item from the array above and adds it to the scene
func generate_item():
	var chosen_item = items[random(0, len(items) - 1)]
	current_item = chosen_item
	
	var item = load("res://Items/" + chosen_item)
	item = item.instance()
	
	add_child(item)
	print("Item got added: " + chosen_item)

func set_story(story, prize):
	get_node("Game/Buying/Text/Story").set_text(story)
	get_node("Game/Buying/Text/Prize").set_text(prize)


func _on_Buy_pressed():
	pass

func _on_Dont_Buy_pressed():
	pass
