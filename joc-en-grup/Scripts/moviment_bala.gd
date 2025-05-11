extends Area2D
var velocitat_bala = 1000

func _process(delta: float) -> void:
	position.x += velocitat_bala * delta
	
	
	
