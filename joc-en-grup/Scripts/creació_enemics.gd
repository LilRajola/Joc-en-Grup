extends Node2D

@onready var timer: Timer = $Timer
@export var escena_enemic: PackedScene
var enemics_creats := 0
var maxim_enemics := 15

func _ready() -> void:
	timer.wait_time = 0.25
	timer.one_shot = false
	timer.autostart = true
	timer.timeout.connect(_on_timer_timeout)
	position.x = 300

func _process(delta: float) -> void:
	position.x = 200 * delta
var spawn = position.x
	
func _on_timer_timeout() -> void:
	if enemics_creats < maxim_enemics:
		var nou_enemic = escena_enemic.instantiate()
		add_child(nou_enemic)
		nou_enemic.position = Vector2($"../Nau".position.x + 300, -165)
		enemics_creats += 1
	else:
		timer.stop()
