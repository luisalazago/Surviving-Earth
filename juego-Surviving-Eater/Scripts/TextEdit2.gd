extends TextEdit

func _init():
	conectar()

func conectar():	
	pass
	
func _ready():
	text =  DatosMundo.mostrarDato(2)
	text += str(DatosMundo.mostrarAireContamiado()) + "%"
