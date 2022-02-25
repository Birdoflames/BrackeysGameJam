extends Sprite

var random = RandomNumberGenerator.new()

var killed = rnd(40,80)
var years_ago = 50*rnd(1,5)

func rnd(start, end):
	random.randomize()
	return random.randi_range(start, end)


func _ready():
	story()

func story():
	var story = "this axe killed over "+str(killed)+" people in the great war that occurred "+str(years_ago)+" years ago!"
	return story

func dictionary_story():
	var dictionary_story = "this axe killed over "+str(killed)+" people in the great war that occurred "+str(years_ago)+" years ago!"

	get_parent().get_node("page 2/axe label").text = dictionary_story
