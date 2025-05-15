extends ProgressBar

var valormax:int
var damage:int

func _ready() -> void:
	valormax = 100
func DisminuirVida():
	value -= damage
	if value <= 0:
		get_tree().get_nodes_in_group("Nau")[0].mort
