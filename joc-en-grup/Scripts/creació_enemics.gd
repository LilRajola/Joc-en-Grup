extends Node2D

@onready var nau = $"../Nau"
@onready var timer: Timer = $Timer
@export var escena_enemic: PackedScene
var enemics_creats := 0
var maxim_enemics := 20
var distancia = 100


func _ready() -> void:
	timer.wait_time = 0.5
	timer.one_shot = false
	timer.autostart = true
	timer.timeout.connect(_on_timer_timeout)

func _on_timer_timeout() -> void:
	if enemics_creats < maxim_enemics:
		var nou_enemic = escena_enemic.instantiate()
		add_child(nou_enemic)
		nou_enemic.position = Vector2(nau.position.x + distancia,-165)
		enemics_creats += 1
	else:
		timer.stop()
