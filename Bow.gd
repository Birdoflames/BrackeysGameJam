extends Sprite

func story():
	var years_ago = "15"
	var story = "we died" + years_ago + "year ago"
	
	var dictionary_story = "they died " + years_ago + "years_ago"
	
	get_parent().get_node("GUI/Artifacts_book/TextureRect/ancient bow label").set_text(dictionary_story)
	return story

func _ready():
	story()
