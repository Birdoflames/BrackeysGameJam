extends Control

var invCoords = {Vector2(0, 0) : false, Vector2(15, 15) : false}
var currentcoords = [Vector2(0, 0), Vector2(15, 15)]

var items = ["ancient sword", "ancient bow", "Genie's lamp"]
var recent_item = items[-1]


func coords_gen():
	var count = 0
	
	for i in invCoords:
		if i == false:
			recent_item.set_position(currentcoords[count])
		count += 1
