extends Area2D

const FiLE_BEGIN = "res://scenes/levels/Level_"


func _on_body_entered(body):
	if body.is_in_group("Player"):
		var current_scene_file = get_tree().current_scene.scene_file_path
		var next_level_number = current_scene_file.to_int() + 1
		
		var next_level_path = FiLE_BEGIN + str(next_level_number) + ".tscn"
		print(next_level_path)
		get_tree().call_deferred ("change_scene_to_file", next_level_path)
