extends Area2D

# to quit game after cutscene


func _on_body_entered(body):
	if body.is_in_group("Player"):
		get_tree().quit()
