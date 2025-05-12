extends PathFollow2D

@export var velocitat: float = 150.0

func _ready() -> void:
	add_to_group("enemics")

func _process(delta: float) -> void:
	progress += velocitat * delta
	
