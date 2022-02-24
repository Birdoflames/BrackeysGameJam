extends Sprite

var years_ago = "15"
	
func story():
	years_ago = "15"
	var story = "we died " + years_ago + " year ago"
	
	return story
	
func _ready():
	story()
	
func dictionary_story():
	var dictionary_story = "they died " + years_ago + " years_ago"
	
	get_parent().get_node("Artifacts_book/page 1/ancient bow label").text = dictionary_story
