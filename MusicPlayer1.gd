extends AudioStreamPlayer

#Jamails attempt of crossfading audio

var dummy_player = AudioStreamPlayer.new()
var fading = false

func _ready() -> void:
	add_child(dummy_player)
	
	stream = load("res://assets/music/Saturn_of_the_Sea__CORE_Music_stem_Loop.wav")
	play()
	
	
func _process(delta: float) -> void:
	if fading:
		volume_db -= 60*delta
		dummy_player.volume_db += 60*delta
		
		
		if dummy_player.volume_db >=0:
			volume_db = 0
			dummy_player.volume_db = -60
			
			stream = dummy_player.stream
			play(dummy_player.get_playback_position())
	
func play_song(song_name) -> void:
		dummy_player.stream = load("res://assets/music/Saturn_of_the_Sea_Solo_PIANO_Loop.wav")
		autoplay = true
		dummy_player.volume_db = -60
		dummy_player.play()
		
