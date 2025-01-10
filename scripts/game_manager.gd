extends Node

var score = 0
var winning_state = false


@onready var canvas_layer = %CanvasLayer
@onready var coins = %Coins
@onready var winning_condition = coins.get_child_count()

func add_point():
	score += 1
	if score == winning_condition:
		winning_state = true
	canvas_layer.update_score(score, winning_state)
