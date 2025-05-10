extends Camera2D
var speed := 200	

func _process(delta: float) -> void:
	var direction := Vector2.ZERO
	
	
	direction.x += 1
	position += direction * speed * delta
