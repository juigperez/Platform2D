extends Node

var score = 0

@onready var canvas_layer = %CanvasLayer

func add_point():
	score += 1
	print(score)
	canvas_layer.update_score(score)
