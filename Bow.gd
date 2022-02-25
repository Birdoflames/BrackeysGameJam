extends Sprite

var random = RandomNumberGenerator.new()

var killed = 10*rnd(4,12)
var archers_name = ""
var chosen_name = rnd(0,5)

func rnd(start, end):
	random.randomize()
	return random.randi_range(start, end)

func story():
	if chosen_name == 0:
		 archers_name = "Sam Li"
		
	elif chosen_name == 1:
		 archers_name = "Sara Astley"
		
	elif chosen_name == 2:
		 archers_name = "John RockStar"
		
	elif chosen_name == 3:
		 archers_name = "Morty Young"
		
	elif chosen_name == 4:
		 archers_name = "Coby Bond"

	else:
		 archers_name = "David Smith"

	var story = "this bow was the best archer’s bow in the whole castle! "+archers_name+", he killed over "+str(killed)+" people!"

	return story

	
func _ready():
	story()
	
func dictionary_story():
	var dictionary_story = "this bow was the best archer’s bow in the whole castle! "+archers_name+", he killed over "+str(killed)+" people"
	
	get_parent().get_node("page 1/ancient bow label").text = dictionary_story
