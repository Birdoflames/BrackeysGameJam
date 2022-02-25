extends Sprite

var random = RandomNumberGenerator.new()
var precious = ""
var something2 = rnd(0,3)


func rnd(start, end):
	random.randomize()
	return random.randi_range(start, end)

	
	
func _ready():
	story()

func story():
	if something2 == 0:
		precious = "diamonds!"
	elif something2 == 1:
		precious = "pearls!"
	elif something2 == 2:
		precious = "gold!"
	else:
		precious = "silver!"
	var story = "This was the worlds biggest chandalier\n and it had a massive amout of " + precious
	return story

func dictionary_story():
	var dictionary_story = ""

	get_parent().get_node("page 3/chandalier label").text = dictionary_story
