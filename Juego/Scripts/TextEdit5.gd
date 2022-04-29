extends TextEdit

func _init():
	conectar()

func conectar():
	pass

func _ready():
	text =  DatosMundo.mostrarDato(5)
	text += str((DatosMundo.mostrarMinerales() * 100) / 500) + "%"
