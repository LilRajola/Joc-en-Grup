extends Area2D
var velocitat_bala = 1000
const explosio = preload("res://Escenes/expllosió.tscn")
@onready var timer: Timer = $Timer

func _ready() -> void:
	pass
	
func _process(delta: float) -> void:
	position.x += velocitat_bala * delta
	

func _on_area_entered(area: Area2D) -> void:
	area.queue_free()
	var e = explosio.instantiate()
	
	e.global_position = position
	get_parent().add_child(e)
	queue_free()  
	

   
