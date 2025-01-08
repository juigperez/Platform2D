extends CanvasLayer

@onready var label = $Label

func update_score(score):
	label.text = "Coins: " + str(score)
