extends Area2D

var velocitat := 250
@onready var path_follow : PathFollow2D = $Path2D/PathFollow2D


func _process(delta: float) -> void:
	path_follow.progress += velocitat * delta
	position.x += 200 * delta
	$CollisionShape2D.global_position= $Path2D/PathFollow2D/Sprite2D.global_position
