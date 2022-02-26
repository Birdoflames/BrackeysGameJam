extends Sprite

var random = RandomNumberGenerator.new()

var chosen_name = rnd(0,3)
var royalty_name = ""
var queen_or_king = ""
var years = rnd(5,15)
var seller_name = ""

func rnd(start, end):
	random.randomize()
	return random.randi_range(start, end)

	
func _ready():
	story()
	
func story():
	years = rnd(5,15)
	chosen_name = rnd(0,3)
	
	if chosen_name == 0:
		royalty_name = "King Pierce"
		queen_or_king = "him"
		seller_name = "Dhedrig Li"
		
	elif chosen_name == 1:
		royalty_name = "King Andres"
		queen_or_king = "him"
		seller_name = "Frendille Astley"
		
	elif chosen_name == 2:
		royalty_name = "Queen Juno"
		queen_or_king = "her"
		seller_name = "Tilpoth RockStar"
	else:
		royalty_name = "Queen Anne"
		queen_or_king = "her"
		seller_name = "Cudro Young"
		
		
	var story = "this necklace was "+royalty_name+" necklace! I served "+queen_or_king+" for "+str(years)+" years."

	return story
	
func dictionary_story():
	var dictionary_story = "this necklace was "+royalty_name+" necklace! "+seller_name+ "served "+queen_or_king+" for "+str(years)+" years."
	
	get_parent().get_node("page 2/diamond necklace label").text = dictionary_story
