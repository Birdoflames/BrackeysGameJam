extends Control

var rng = RandomNumberGenerator.new()

#when added to the scene: searches root node; generates random story/prize; calls set_story() from Scene_Handler
func _ready():
	var scene_handler = get_tree().get_root().find_node("Scene_Handler", true, false)
	
	var story = "Dieses Item wurde " + str(random(1, 10)) + " geschmiedet."
	var prize = str(random(1, 15))
	
	scene_handler.set_story(story, prize)

func random(start, end):
	rng.randomize()
	return rng.randi_range(start, end)
