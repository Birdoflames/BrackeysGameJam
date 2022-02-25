extends Sprite

var random = RandomNumberGenerator.new()

var chosen_name = rnd(0,3)
var chosen_seller = rnd(0,5)
var sellers_name = ""

var years = rnd(35,75)
var royalty_name = ""


func rnd(start, end):
	random.randomize()
	return random.randi_range(start, end)


func _ready():
	story()

func story():

	if chosen_name == 0:
		 royalty_name = "King Pierce "

	elif chosen_name == 1:
		 royalty_name = "King Andres "

	elif chosen_name == 2:
		 royalty_name = "Queen Juno "

	else:
		 royalty_name = "Queen Anne "
	

	if chosen_seller == 0:
		 sellers_name = "Dhedrig Li"
		
	elif chosen_seller == 1:
		 sellers_name = "Frendille Astley"
		
	elif chosen_seller == 2:
		 sellers_name = "Tilpoth RockStar"
		
	elif chosen_seller == 3:
		 sellers_name = "Cudro Young"
		
	elif chosen_seller == 4:
		 sellers_name = "Coby Bond"

	else:
		 sellers_name = "David Smith"
		

	var story = "This ring was given to me by "+ royalty_name +" "+ str(years) + " years ago."

	return story
func dictionary_story():
	var dictionary_story = 'This ring was given to '+sellers_name+' by '+ royalty_name + str(years) + ' years ago.'

	get_parent().get_node("page 2/diamond ring label").text = dictionary_story
