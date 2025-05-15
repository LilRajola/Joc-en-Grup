extends Area2D

const bala = preload("res://Escenes/bala_enemiga.tscn")
@onready var timer: Timer = $Timer

func _ready() -> void:
	timer.wait_time = 2
	timer.one_shot = false
	timer.autostart = true
	timer.timeout.connect(_on_timer_timeout)
	
func _process(delta: float) -> void:
	position.x += 200 * delta
	
func _on_timer_timeout() -> void:
	var shoot = bala.instantiate()
	shoot.position = position + Vector2(-50, 0)
	get_parent().add_child(shoot)
	
	
