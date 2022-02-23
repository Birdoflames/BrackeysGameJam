extends Node

#onready var buy_button = $Buy
#onready var dont_buy_button = $DontBuy

func _ready():
	pass

func DontBuy():
	pass
	
	
func _on_DontBuy_pressed():
	DontBuy()
	
var item = "hello world"

func _on_Buy_pressed():
	item = "hi"
	



