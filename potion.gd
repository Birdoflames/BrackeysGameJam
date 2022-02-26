extends Sprite

var random = RandomNumberGenerator.new()
var wizard_names = ["Trezin", "Rhazohr", "Vruprix", "Gandalf", "Edixius" ]
var years_ago = rnd(15,30)
var wizard_name = ""

func rnd(start, end):
	random.randomize()
	return random.randi_range(start, end)
	
	
func story():
	wizard_name = wizard_names[rnd(0,4)]
	years_ago = rnd(15,30)
	
	var story = "This potion was brewed by my master, the great wizard "+wizard_name+", "+str(years_ago)+" years ago"

func dictionary_story():
	var dictionary_story = "This potion was brewed "+str(years_ago)+" years ago by the great wizard "+wizard_name+"!"
	
	get_parent().get_node("page 4/spellbook label").text = dictionary_story




	
