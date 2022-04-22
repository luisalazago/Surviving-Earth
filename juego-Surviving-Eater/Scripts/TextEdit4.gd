extends TextEdit
onready var datos  = get_node("/root/DatosMundo")
func _init():
	conectar()

func conectar():
	pass

func _ready():
	text =  "Temperatura\n"
	text += str(datos.mostrarTemperatura()) + "°C"
