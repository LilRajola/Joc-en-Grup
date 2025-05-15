extends Node2D

@onready var timer: Timer = $Timer
const ENEMIC_NO_DISPARA = preload("res://Escenes/enemic_area.tscn")
const ENEMIC_DISPARA = preload("res://Escenes/enemic_disparo.tscn")
@onready var nau = $Nau
var cops = 0 

func _ready():
	timer.wait_time = 2.0
	timer.one_shot = false
	timer.autostart = true
	timer.timeout.connect(_on_timer_timeout)

func _on_timer_timeout():
	if cops <= 10:
		var nou_enemic = ENEMIC_DISPARA.instantiate()
		get_parent().add_child(nou_enemic)
		nou_enemic.position.x = nau.position.x + randf_range(400,500)
		nou_enemic.position.y = randf_range(-180, 180)
		timer.start()
		cops += 1
	else:
		get_tree().change_scene_to_file("res://Escenes/Victoria.tscn")
