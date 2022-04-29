extends TextEdit

func _init():
	conectar()

func conectar():
	pass
	
func _ready():
	text =  DatosMundo.mostrarDato(3)
	text += str((DatosMundo.mostrarPetroleo() * 100) / 600) + "%"
