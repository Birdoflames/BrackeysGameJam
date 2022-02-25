extends Sprite


var random = RandomNumberGenerator.new()

var choose_mafia = rnd(0,3)
var choose_place = rnd(0,3)
var mafia_name = ""
var place = ""

func rnd(start, end):
	random.randomize()
	return random.randi_range(start, end)


func _ready():
	story()

func story():
	if choose_place == 0:
		place = "village"
	elif choose_place == 1:
		place = "city"
	elif choose_place == 2:
		place = "town"
	else:
		place = "castle"
		 
		
		
	if choose_mafia == 0:
		mafia_name = "Draegan Grimsbane"
		
	elif choose_mafia == 1:
		mafia_name = "Vesh Calarook"
	
	elif choose_mafia == 2:
		mafia_name = "Lazarus Dread"
		
	elif choose_mafia == 3:
		mafia_name = "Romulus Kane"
	else:
		mafia_name = "Prism Vonner"
		
	
	var story = "This candlestick was found in a raid of one of the leaders of the mafia's house! he was known as " + mafia_name +" and was hung in the court in front of the whole " + place
	return story

func dictionary_story():
	var dictionary_story = ""

	get_parent().get_node("page 3/candlestick label").text = dictionary_story
