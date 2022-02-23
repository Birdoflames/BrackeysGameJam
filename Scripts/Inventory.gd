extends Control

var invCoords = [false, false]
var current_coords = [Vector2(0, 0), Vector2(15, 15)]


func generate_coords():
	var count = 0
	
	for i in invCoords:
		if i == false:
			return current_coords[count]
		count += 1
