extends TextEdit
onready var datos  = get_node("/root/DatosMundo")
func _init():
	conectar()

func conectar():
	pass
	
func _ready():
	text =  "Petroleo\n"
	text += str((datos.mostrarPetroleo() * 100) / 600) + "%"
