extends Camera2D

var velocidad
var MaxEnX
var MinEnX
var MaxEnY
var MinEnY
var vector2camara
func _ready():
	vector2camara = Vector2.ZERO
	pass # Replace with function body.



func _process(delta):
	
	
	translate(vector2camara)
	pass
