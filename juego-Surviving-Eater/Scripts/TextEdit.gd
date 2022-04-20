extends TextEdit


var Datos
var BasePlayer
func _init():
	conectar()

func conectar():	
	
	print(get_node("/root/Mundo"))
	BasePlayer=$Ciudad

func _ready():
	text ="hola"
	 
