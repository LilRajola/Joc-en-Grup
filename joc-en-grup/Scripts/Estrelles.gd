extends Node2D

var center = Vector2(576, 324)  
var speed = 10  
var scale_speed = 0.02  

func _process(delta):
	var direction = (center - position).normalized()
	position += direction * speed * delta
	scale += Vector2.ONE * scale_speed * delta
