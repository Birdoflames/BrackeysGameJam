extends Sprite

var random = RandomNumberGenerator.new()
var something = random.randomize()

var liquid = ""
var chosen_liquid = rnd(0,1)
var years_ago = 50*rnd(1, 5)

func rnd(start, end):
	return random.randi_range(start, end)


func _ready():
	story()

func story():
	if chosen_liquid == 0:
		liquid = "water" 
	else:
		liquid = "wine"	
		
	var story = "this is the vase that was used to transfer "+liquid+" to the warriors in the great war that occurred "+str(years_ago)+" years ago" 
	return story

func dictionary_story():
	var dictionary_story = "this is the vase that was used to transfer "+liquid+" to the warriors in the great war that occurred "+str(years_ago)+" years ago"

	get_parent().get_node("page 2/vase label").text = dictionary_story
