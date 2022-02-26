extends Sprite


var random = RandomNumberGenerator.new()
var champ_names = ["Adrian", "Danilo", "Zeph", "Aragorn", "Jalil" ]
var sports = ["swimming", "running", "sword fighting"]

var champ_name = ""

var sport = ""

func rnd(start, end):
	random.randomize()
	return random.randi_range(start, end)


func story():
	champ_name = champ_names[rnd(0,4)]
	sport = sports[rnd(0,2)]


	var story ="This trophy was given to me, "+champ_name+" for winning a "+sport+" competition"

func dictionary_story():
	var dictionary_story ="This trophy was given to "+champ_name+" for winning a "+sport+" competition"

	get_parent().get_node("page 5/trophy label").text = dictionary_story
