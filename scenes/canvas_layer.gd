extends CanvasLayer

@onready var label = $Label
var position = Vector2(320,250)

func update_score(score, winning_state):
	if winning_state:
		label.text = "YOU WON! BY A LOT!!!"
		label.set_position(position)
	else:
		label.text = "Coins: " + str(score)
