extends HBoxContainer

onready var buy_button = $Buy
onready var dont_buy_button = $DontBuy

func _ready():
	pass

func DontBuy():
	pass


func Buy():
	get_parent().get_node("Inventory")
	
	
func _on_DontBuy_pressed():
	DontBuy()
	
	
func _on_Buy_pressed():
	Buy()
