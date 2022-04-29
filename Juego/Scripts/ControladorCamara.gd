extends Camera2D

var velocidad = 100
var MaxEnX = 2000
var MinEnX = -2000
var MaxEnY = 1500
var MinEnY = -1500
var vector2camara

func _physics_process(delta):
	var n = 0
	var m = 0
	if(Input.is_action_pressed("ui_right")):
		n = vector2camara.x + (velocidad * delta)
	elif(Input.is_action_pressed("ui_left")):
		n = vector2camara.x - (velocidad * delta)
	elif(Input.is_action_pressed("ui_down")):
		m = vector2camara.y + (velocidad * delta)
	elif(Input.is_action_pressed("ui_up")):
		m = vector2camara.y - (velocidad * delta)
	
	if(n >= MaxEnX):
		vector2camara.x = MaxEnX
	elif(n <= MinEnX):
		vector2camara.x = MinEnX
	else:
		vector2camara.x = n
	if(m >= MaxEnY):
		vector2camara.y = MaxEnY
	elif(m <= MinEnY):
		vector2camara.y = MinEnY
	else:
		vector2camara.y = m
	translate(vector2camara)

func _ready():
	vector2camara = Vector2.ZERO
	pass # Replace with function body.
	
func _process(delta):
	pass
