extends AudioStreamPlayer

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _ready() -> void:
	stream = load("res://assets/music/Saturn_of_the_Sea_STRINGS_stem_Loop.wav")
	play()
	
