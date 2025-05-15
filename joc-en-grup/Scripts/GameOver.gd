extends Node2D
var ON := true

func _ready():
	$Audio/AudioStreamPlayer.play()
	
func _on_audio_pressed() -> void:
	ON = !ON 
	if ON:
		$Audio/AudioStreamPlayer.play()
	else:
		$Audio/AudioStreamPlayer.stop()

func _on_audio_stream_player_finished() -> void:
	$Audio/AudioStreamPlayer.play()
