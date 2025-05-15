extends Node2D

var ON := true
func _ready():
	$Audio/AudioStreamPlayer.play()
	pass
func _on_tutorial_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenes/Tutorial.tscn")
func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenes/nivell.tscn")
func _on_audio_pressed():
	ON = !ON 
	if ON:
		$Audio/AudioStreamPlayer.play()
	else:
		$Audio/AudioStreamPlayer.stop()

func _on_audio_stream_player_finished():
	$Audio/AudioStreamPlayer.play()
