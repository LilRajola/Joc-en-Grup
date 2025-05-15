extends Node2D

@onready var timer: Timer = $Timer
@export var escena_enemic: PackedScene
var enemics_creats := 0
var maxim_enemics := 20

func _ready() -> void:
	timer.wait_time = 0.5
	timer.one_shot = false
	timer.autostart = true
	timer.timeout.connect(_on_timer_timeout)

func _process(delta: float) -> void:
	position.x = 200 * delta

func _on_timer_timeout() -> void:
	if enemics_creats < maxim_enemics:
		var nou_enemic = escena_enemic.instantiate()
		add_child(nou_enemic)
		enemics_creats += 1
	else:
		timer.stop()
