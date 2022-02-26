extends Sprite


var random = RandomNumberGenerator.new()
var wizard1_names = ["Trezin", "Rhazohr", "Vruprix", "Gandalf", "Edixius" ]
var wizard2_names = ["Eforn","Xefeus","Ajamar", "Drotrix", "Eragon"]

var wizard1 = ""

var wizard2 = ""

func rnd(start, end):
	random.randomize()
	return random.randi_range(start, end)
	
	
func story():
	wizard1 = wizard1_names[rnd(0,4)]
	wizard2 = wizard2_names[rnd(0,4)]
	
	
	var story = "I found this wizard hat that belonged to "+wizard1+" and to "+wizard2+"!"

func dictionary_story():
	var dictionary_story = "This wizards hat is known to have magical properties and belonged to "+wizard1+" and to "+wizard2+ "!"
	
	get_parent().get_node("page 4/wizard's hat label").text = dictionary_story




