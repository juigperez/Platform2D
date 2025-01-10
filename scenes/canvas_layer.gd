extends CanvasLayer

@onready var label = $Label

func update_score(score, winning_state):
	if winning_state:
		label.text = "YOU WON! BY A LOT!!!"
	else:
		label.text = "Coins: " + str(score)
