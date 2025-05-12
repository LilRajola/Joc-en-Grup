extends CharacterBody2D

var velocitat  := 150
const bala = preload("res://Escenes/bala_enemiga.tscn")
@onready var path_follow : PathFollow2D = $Path2D/PathFollow2D

func _process(delta: float) -> void:
	path_follow.progress += velocitat * delta
	$Path2D.position.x += 200 * delta
	
func bala_xoca():
	$Path2D/PathFollow2D/Sprite2D.visible = false
