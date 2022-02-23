extends Control

var rng = RandomNumberGenerator.new()

func _ready():
	var story = "Some Item found " + str(random(100, 200)) + " years ago..."
	var prize = str(random(10, 20))
	get_tree().get_root().find_node("Game_Scene", true, false).set_story(story, prize)

func random(start, end):
	rng.randomize()
	return rng.randi_range(start, end)
