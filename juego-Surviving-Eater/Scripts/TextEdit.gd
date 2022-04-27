extends TextEdit

func _init():
	conectar()

func conectar():	
	pass
	
func _ready():
	text = DatosMundo.mostrarDato(1)
	text += str(DatosMundo.mostrarAguaContaminada()) + "%"
