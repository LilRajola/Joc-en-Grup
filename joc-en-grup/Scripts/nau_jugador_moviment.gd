extends CharacterBody2D

var velocitat  := 200
const bala = preload("res://Escenes/bala_area.tscn")
func _process(delta: float) -> void:
	var direcció_y = Input.get_axis("Pujar","Baixar")
	velocity.y = direcció_y * velocitat
	velocity.x = 200
	
	# Per a las balas
	var shoot = bala.instantiate()
	
	if Input.is_action_just_pressed("Disparar"):
		shoot.position = position + Vector2(50,0)  # Fa que la bala surti del jugador
		get_parent().add_child(shoot)
		$AudioStreamPlayer.play()
	move_and_slide()
func rebre_bala():
	$Salut.value -= 40
	if $Salut.value <=  0:
		pass
		
func mort():
	visible = false


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	$".".position.y = 0 
	$Salut.value -= 20
