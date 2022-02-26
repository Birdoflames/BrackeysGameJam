extends Sprite



var chosen_name = rnd(0,5)
var great_grandfathers_name = ""
var sellers_name = ""
var years_ago = 50*rnd(1,5)

func rnd(start, end):
	var random = RandomNumberGenerator.new()
	random.randomize()
	return random.randi_range(start, end)


func story():
	years_ago = 50*rnd(1,5)
	chosen_name = rnd(0,5)
	
	if chosen_name == 0:
		 great_grandfathers_name = "Stan Li"
		
	elif chosen_name == 1:
		 great_grandfathers_name = "Rick Astley"
		
	elif chosen_name == 2:
		 great_grandfathers_name = "Tony RockStar"
		
	elif chosen_name == 3:
		 great_grandfathers_name = "James Young"
		
	elif chosen_name == 4:
		 great_grandfathers_name = "Thanos Bond"

	else:
		 great_grandfathers_name = "Jerry Smith"
		
	var story = "I got it from my great grandfather, " +great_grandfathers_name +", he got it while fighting in the great war that occurred "+ str(years_ago) +" years ago"

	return story

	
func _ready():
	story()
	
func dictionary_story():
	if chosen_name == 0:
		 sellers_name = "Dhedrig Li"
		
	elif chosen_name == 1:
		 sellers_name = "Frendille Astley"
		
	elif chosen_name == 2:
		 sellers_name = "Tilpoth RockStar"
		
	elif chosen_name == 3:
		 sellers_name = "Cudro Young"
		
	elif chosen_name == 4:
		 sellers_name = "Coby Bond"

	else:
		 sellers_name = "David Smith"
	
	var dictionary_story = sellers_name + " got this sword from his great grandfather "+ great_grandfathers_name +", his great grandfather got it from the great war that occurred "+ str(years_ago)+ " years ago"
	
	get_parent().get_node("page 1/ancient sword label").text = dictionary_story
