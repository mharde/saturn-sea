extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(false)
	set_process_input(false)
	$AnimationPlayer.play("cutscene") # Replace with function body.
	




