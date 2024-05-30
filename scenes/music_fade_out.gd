extends Area2D

#var fading = false
#
#
func _on_body_entered(body) -> void:
	if body.is_in_group("Player") :
		MusicPlayer2.volume_db -= 2	
	
func _on_body_exited(body):
	if body.is_in_group("Player") :
		MusicPlayer2.volume_db -= 2	
