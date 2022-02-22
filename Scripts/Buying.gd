extends VBoxContainer

onready var buy_button = $Buy
onready var dont_buy_button = $DontBuy


func _on_DontBuy_pressed():
	pass

func _on_Buy_pressed():
	var item = load("res://Items/" + str(Game.current_item) + ".tscn")
	item = item.instance()
	
	var item_position = get_node("GUI/Inventory").generate_coords()
	item.set_position(item_position)
	
	get_node("GUI").add_child(item)
