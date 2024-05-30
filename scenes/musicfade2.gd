extends Area2D


func _on_body_entered(body) -> void:
	if body.is_in_group("Player") :
		MusicPlayer2.volume_db -= 4	
