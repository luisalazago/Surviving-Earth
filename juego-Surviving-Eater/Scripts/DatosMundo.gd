extends Node
#señales
signal mensaje

#datos del mundo
var AguaMundo=200
var ContaminacionAire=100
var ContaminacionAgua=100
#dato debug hola
var dato="hola"


func mostrarAguaContaminada():
	return ContaminacionAgua
	
	
func sacarAgua(n):
	var result = 0
	if(n > AguaMundo):
		result =-1
	else:
		AguaMundo -= n
		result = n
	emit_signal("mensaje")

func contaminarAgua(n):
	if(n+ContaminacionAgua >= 100):
		ContaminacionAgua=100
	elif(n+ContaminacionAgua <= 0):
		ContaminacionAgua=0
	else:
		ContaminacionAgua+=n
func contaminarAire(n):
	if(n+ContaminacionAire >= 100):
		ContaminacionAire=100
	elif(n+ContaminacionAire <= 0):
		ContaminacionAire=0
	else:
		ContaminacionAire+=n



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
