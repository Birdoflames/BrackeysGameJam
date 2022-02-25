extends Sprite

var random = RandomNumberGenerator.new()
var something = random.randomize()

var chosen_name = rnd(0,2)

var miracles_count = rnd(10,24)
var lit_for = rnd(5,15)
var genies_name = ""


func rnd(start, end):
	return random.randi_range(start, end)

	
func _ready():
	story()
	
func story():
	if chosen_name == 0:
		 genies_name = "Angle"
		
	elif chosen_name == 1:
		 genies_name = "God's deliver"
		
	elif chosen_name == 2:
		 genies_name = "Aladin"
		

	else:
		 genies_name = "Jerry Smith"
		
	var story = "tales tell this lamp was the great Genie’s lamp, the villagers around call him "+ genies_name+", he is responsible for "+str(miracles_count)+" miracles! e.g. that the candlestick was lit for "+ str(lit_for) +" whole days without any fuel."

	return story
func dictionary_story():
	var dictionary_story = 'as the local legend tells us, this lamp was the great genie’s lamp! which the villagers use to call "'+ genies_name +'", he is responsible for '+str(miracles_count) +' miracles! e.g. that the candlestick was lit for ' +str(lit_for)+ ' whole days without any fuel.'
	
	get_parent().get_node("page 1/gene's oil lamp label").text = dictionary_story
