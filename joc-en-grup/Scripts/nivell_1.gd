extends Node2D

@onready var timer: Timer = $Timer
const ENEMIC_NO_DISPARA = preload("res://Escenes/enemic_area.tscn")
const ENEMIC_DISPARA = preload("res://Escenes/enemic_disparo.tscn")
const oleada = preload("res://Escenes/creació_enemics_2.tscn")
@onready var nau = $Nau
var cops = 0 
var distancia = 200

func _ready():
	timer.wait_time = 2.0
	timer.one_shot = false
	timer.autostart = true
	timer.timeout.connect(_on_timer_timeout)

func _on_timer_timeout():
	if cops <= 9:
		var nou_enemic = ENEMIC_DISPARA.instantiate()
		get_parent().add_child(nou_enemic)
		nou_enemic.position.x = nau.position.x + randf_range(400,500)
		nou_enemic.position.y = randf_range(-180, 180)
		timer.start()
		cops += 1
	if cops == 1:
		var nova_oleada = oleada.instantiate()
		get_parent().add_child(nova_oleada)
	if cops == 10:
		var nova_oleada_2 = oleada.instantiate()
		get_parent().add_child(nova_oleada_2)
		nova_oleada_2.position.x = distancia + $Nau.position.x
	if cops == 20:
		get_tree().change_scene_to_file("res://Escenes/Victoria.tscn")
