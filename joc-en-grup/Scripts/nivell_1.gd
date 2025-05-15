extends Node2D

@onready var timer: Timer = $Timer
const ENEMIC_DISPARA = preload("res://Escenes/enemic_area.tscn")
const ENEMIC_NO_DISPARA = preload("res://Escenes/enemic_disparo.tscn")

var torn_disparar = true  # Alternarem quin enemic apareix

func _ready():
	timer.wait_time = 2.0
	timer.one_shot = false
	timer.autostart = true
	timer.timeout.connect(_on_timer_timeout)

func _on_timer_timeout():
	var enemic
	if torn_disparar:
		enemic = ENEMIC_DISPARA.instantiate()
	else:
		enemic = ENEMIC_NO_DISPARA.instantiate()
	
	torn_disparar = !torn_disparar  


	var pos_x = randf_range(100, 700)
	enemic.position = Vector2(pos_x, -50)
	add_child(enemic)
