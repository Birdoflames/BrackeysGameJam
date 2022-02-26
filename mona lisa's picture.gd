extends Sprite

var random = RandomNumberGenerator.new()
var something = random.randomize()

var fights_count = (rnd(1,3))
var died_for = 10*rnd(2,10)


func rnd(start, end):
	return random.randi_range(start, end)

	
func _ready():
	story()
	
func story():
	fights_count = (rnd(1,3))
	died_for = 10*rnd(2,10)

	var story = "this is the original Mona Lisa’s picture, "+str(fights_count)+" fights have started because of it, and over "+str(died_for)+" people died while trying to get it!"
	return story
	
func dictionary_story():
	var dictionary_story = "this is the original Mona Lisa’s picture, "+str(fights_count)+" fights has started because of it and over "+str(died_for)+" people died while trying to get it!"
	
	get_parent().get_node("page 1/mona lisa's picture label").text = dictionary_story
