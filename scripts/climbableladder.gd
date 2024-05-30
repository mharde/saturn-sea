extends Area2D

#sets is_climbing to true to simulate climbing
func _on_body_entered(body):
	print("I'm a ladder")
	if body.is_in_group("Climber"):
		if body.climbing == false:
			body.climbing = true
	if body.is_in_group("Player") :
		MusicPlayer2.volume_db -= 2	

#set is_climbing to false to stop climbing
func _on_body_exited(body):
	print("Come back!")
	if body.is_in_group("Climber"):
		if body.climbing == true:
			body.climbing = false

	if body.is_in_group("Player") :
		MusicPlayer2.volume_db -= 2	


