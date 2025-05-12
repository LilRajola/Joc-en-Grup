extends Area2D
var velocitat_bala = 1000

func _ready() -> void:
	pass
func _process(delta: float) -> void:
	position.x += velocitat_bala * delta
	

func _on_area_entered(area: Area2D) -> void:
	print("xoc")
	area.queue_free()
	queue_free()
	
