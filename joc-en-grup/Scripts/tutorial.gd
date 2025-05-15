extends Node2D

@onready var timer_global: Timer = $Timer
const creacio_enemics = preload("res://Escenes/creació_enemics.tscn")

func _ready() -> void:
	pass
	#timer_global.wait_time = 16
	#timer_global.one_shot = false
	#timer_global.autostart = true
	#timer_global.timeout.connect(_on_timer_timeout)

func _on_nivell_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenes/Nivell.tscn")

 #func _on_timer_timeout():
	#var oleada_sense_tiro = creacio_enemics.instantiate()
	#add_child(oleada_sense_tiro)
	#oleada_sense_tiro.global_position = $Nau.global_position
	
	
