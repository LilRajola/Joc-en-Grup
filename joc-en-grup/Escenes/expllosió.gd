extends Node2D


@onready var timer: Timer = $Timer

func _ready():
	timer.timeout.connect(_on_timer_timeout)

func _on_timer_timeout():
	queue_free()
