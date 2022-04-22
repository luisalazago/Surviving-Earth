extends TextEdit
onready var datos  = get_node("/root/DatosMundo")
func _init():
	conectar()

func conectar():
	pass

func _ready():
	text =  datos.mostrarDato(5)
	text += str((datos.mostrarMinerales() * 100) / 500) + "%"
