extends TextEdit

var Datos = preload("res://Scripts/DatosPlayer.gd")	
var datos = Datos.new()

func _ready():
	print(datos.mostrarEnergia())
	text = "Consumo de Energia: " + str(datos.mostrarEnergia()) + "\n"
	text += "Consumo de Agua: " + str(datos.mostrarAgua()) + "\n"
	text += "Población albergada: " + str(datos.mostrarPoblacion()) + "\n"
	text += "Reciclaje producido: " + str(datos.mostrarReciclaje()) + "\n"
	
	
