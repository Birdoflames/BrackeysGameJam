extends Sprite

var random = RandomNumberGenerator.new()
var something = random.randomize()
var years_ago = rnd(1, 130)

func rnd(start, end):
	return random.randi_range(start, end)

func story():
	years_ago = rnd(1, 130)
	var story = "we died " + str(years_ago) + " year ago"

	return story

	
func _ready():
	story()
	
func dictionary_story():
	var dictionary_story = "they died " + str(years_ago) + " years_ago"
	
	get_parent().get_node("page 1/ancient bow label").text = dictionary_story
