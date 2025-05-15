extends Label

@onready var label : Label = $"."
@onready var timer_global: Timer = $Timer
var missatges = 0

func _ready() -> void:
	timer_global.wait_time = 2.5
	timer_global.one_shot = false
	timer_global.autostart = true
	timer_global.timeout.connect(_on_timer_timeout)

func _process(delta: float) -> void:
	pass
func _on_timer_timeout():
	if missatges == 0:
		label.text = "Per pilotar la nau premi W i S (o fletxes), i per a diparar, l'espai!"
	if missatges == 1:
		label.text = "Elimina tots els enemics, si contacten amb tu, estás perdut."
	if missatges == 2:
		label.text = "Ja ho tens, molta sort!!!"
	missatges += 1
