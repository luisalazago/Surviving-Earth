extends TextEdit

func _init():
	conectar()

func conectar():
	pass

func _ready():
	text =  DatosMundo.mostrarDato(4)
	text += str(DatosMundo.mostrarTemperatura()) + "°C"
