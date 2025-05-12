extends Node2D

@onready var timer: Timer = $Timer
@export var escena_enemic: PackedScene
var enemics_creats := 0
var maxim_enemics := 20

func _ready() -> void:
	timer.wait_time = 1.0
	timer.one_shot = false
	timer.autostart = true
	timer.timeout.connect(_on_timer_timeout)

func _on_timer_timeout() -> void:
	if enemics_creats < maxim_enemics:
		var nou_enemic = escena_enemic.instantiate()
		add_child(nou_enemic)
		nou_enemic.position = Vector2(100,0)  # o posició concreta
		enemics_creats += 1
	else:
		timer.stop()
