extends Node2D

var ON := true
func _ready():
	$Audio/AudioStreamPlayer.play()

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenes/mapa_2d.tscn")


func _on_audio_pressed():
	ON = !ON 
	if ON:
		$Audio/AudioStreamPlayer.play()
	else:
		$Audio/AudioStreamPlayer.stop()


func _on_audio_stream_player_finished():
	$Audio/AudioStreamPlayer.play()




	


	
