extends Node2D

@onready var timer: Timer = $Timer
const ENEMIC_NO_DISPARA = preload("res://Escenes/enemic_area.tscn")
const ENEMIC_DISPARA = preload("res://Escenes/enemic_disparo.tscn")
@onready var nau = $Nau

func _ready():
	timer.wait_time = 2.0
	timer.one_shot = false
	timer.autostart = true
	timer.timeout.connect(_on_timer_timeout)

func _on_timer_timeout():
	var nou_enemic = ENEMIC_DISPARA.instantiate()
	get_parent().add_child(nou_enemic)
	nou_enemic.position.x = nau.position.x + randf_range(450,500)
	nou_enemic.position.y = randf_range(-180, 180)
	timer.start()
