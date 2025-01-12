extends Camera2D

@export_category("Follow Character")
@export var player : CharacterBody2D

@export_category("Camera Smoothing")
@export var smoothing_enabled : bool
const range : int = 10
@export_range(1,range) var smoothing_distance : int = 8


func _physics_process(delta):
	if player != null:
		var camera_position : Vector2
		
		if smoothing_enabled:
			var weight : float = float((range+1) - smoothing_distance) / 100 
			camera_position = lerp(global_position, player.global_position, weight)
		else:
			camera_position = player.global_position
		
		global_position = camera_position.floor()

	
