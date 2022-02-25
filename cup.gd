extends Sprite

var random = RandomNumberGenerator.new()

var years_ago = rnd(10,20)
var royalty_name = ""
var sellers_name = ""
var chosen_name = rnd(0,3)

func rnd(start, end):
	random.randomize()
	return random.randi_range(start, end)


func _ready():
	story()

func story():
	if chosen_name == 0:
		royalty_name = "King Pierce"
		sellers_name = "Sam Li"
		
	elif chosen_name == 1:
		royalty_name = "King Andres"
		sellers_name = "Sara Astley"
		
	elif chosen_name == 2:
		royalty_name = "Queen Juno"
		sellers_name = "John RockStar"
	else:
		royalty_name = "Queen Anne"
		sellers_name = "Morty Young"
		
	
	var story = "this was the cup I served "+royalty_name+" with for "+str(years_ago)+" years"
	return story

func dictionary_story():
	var dictionary_story = "the cup "+sellers_name+" used to serve "+royalty_name+" for "+str(years_ago)+" years."

	get_parent().get_node("page 2/cup label").text = dictionary_story
