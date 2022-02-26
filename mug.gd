extends Sprite


func story():
	var story = "this mug is a mug"

func dictionary_story():
	var dictionary_story = "this mug is a mug"
	
	get_parent().get_node("page 4/mug label").text = dictionary_story
