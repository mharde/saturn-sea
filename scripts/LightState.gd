extends Area2D

var lightson = true

func _on_body_exited(body):
	print("Lights off!")
	if body.is_in_group("Lightbearer"):
		if lightson == true:
			lightson = false
			


func _on_street_light_a_1_visibility_changed():
	if lightson == false:
		hide() 
		
	# Replace with function body.
