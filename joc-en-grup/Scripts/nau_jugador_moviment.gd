extends CharacterBody2D

var velocitat  := 200

func _process(delta: float) -> void:
	var direcció_y = Input.get_axis("Pujar","Baixar")
	velocity.y = direcció_y * velocitat
	velocity.x = 200
	move_and_slide()
