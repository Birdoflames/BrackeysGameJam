extends Node

var rng = RandomNumberGenerator.new()
var items = []
var current_item


func _ready():
	print(get_node("GUI/Buying/Text/Story").get_text())
	items = list_files_in_directory("res://Item_Scenes")
	get_item()


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
	print(files)

	return files


func random(start, end):
	rng.randomize()
	return rng.randi_range(start, end)


func get_item():
	var chosen_item = items[random(0, len(items) - 1)]
	current_item = chosen_item
	
	var item = load("res://Item_Scenes/" + str(chosen_item))
	item = item.instance()
	
	get_node(".").add_child(item)


func set_story(story, prize):
	pass
	#get_node("GUI/Buying/Text/Prize").set_text(story)
	#get_node("GUI/Buying/Text/Prize").set_text(prize)
