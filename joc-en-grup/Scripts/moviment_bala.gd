extends Area2D
var velocitat_bala = 1000

func _ready() -> void:
	connect("area_entered", _on_area_entered)
func _process(delta: float) -> void:
	position.x += velocitat_bala * delta
	

func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("enemics"):
		area.queue_free()
		queue_free()
