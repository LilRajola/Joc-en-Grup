extends Area2D
var velocitat_bala = -600

func _process(delta: float) -> void:
	position.x += velocitat_bala * delta
	
func _on_body_entered(body: Node2D) -> void:
	body.rebre_bala()
