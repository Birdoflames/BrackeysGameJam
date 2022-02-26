extends Sprite

var random = RandomNumberGenerator.new()
var artist_name = ""
var not_sure = rnd(0,3)
var years = rnd(1, 5)*50


func rnd(start, end):
	random.randomize()
	return random.randi_range(start, end)

func _ready():
	story()

func story():
	not_sure = rnd(0,3)
	years = rnd(1, 5)*50

	if not_sure == 0:
		artist_name = "Floyd Evans"

	elif not_sure == 1:
		artist_name = "Terrence Vale"

	elif not_sure == 2:
		artist_name = "Perry Cage"

	else:
		artist_name = "Allen Gordon"

	var story = "This painting is an original piece by " + artist_name + "and is his \n depiction of the great war that occurred " + str(years) + " years ago"
	return story

func dictionary_story():
	var dictionary_story = "This painting is an original piece by " + artist_name + "and is his \n depiction of the great war that occurred " + str(years) + " years ago"

	get_parent().get_node("page 3/painting label").text = dictionary_story
