extends Area2D
var velocitat_bala = -800

func _process(delta: float) -> void:
	position.x += velocitat_bala * delta
	
