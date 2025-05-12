extends Area2D

var velocitat := 150
const bala = preload("res://Escenes/bala_enemiga.tscn")
@onready var path_follow : PathFollow2D = $Path2D/PathFollow2D

func _ready() -> void:
	add_to_group("enemics")

func _process(delta: float) -> void:
	path_follow.progress += velocitat * delta
	$Path2D.position.x += 200 * delta
	$CollisionShape2D
