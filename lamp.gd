extends Sprite


var random = RandomNumberGenerator.new()

var royalty_name = ""
var room = ""
var source = ""
var chosen_name = rnd(0,3)
var chosen_source = rnd(0,1)
var chosen_room = rnd(0,1) 

func rnd(start, end):
	random.randomize()
	return random.randi_range(start, end)


func _ready():
	story()

func story():
	if chosen_name == 0:
		royalty_name = "King Pierce"
		
	elif chosen_name == 1:
		royalty_name = "King Andres "

	elif chosen_name == 2:
		royalty_name = "Queen Juno "

	else:
		royalty_name = "Queen Anne "
		
	if chosen_room == 0:
		room = "living room"
	else:
		room = "bedroom"
		
	if chosen_source == 0:
		source = "oil"
	else:
		source = "electricity"


	var story = "this lamp was "+royalty_name +room+" lamp!\n it was the first lamp that worked on "+source
	return story

func dictionary_story():
	var dictionary_story = "this lamp was "+royalty_name +room+" lamp! it was the first lamp that worked on "+source

	get_parent().get_node("page 3/lamp label").text = dictionary_story
