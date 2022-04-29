extends Node

#DatosDel jugador
var EnergiaAcomulada = 100
var petroleoAcomulado = 50
var aguaAcomulada = 100
var comidaAlmacenada = 100
var maxEnergia
var maxPetroleo
var maxAgua
var maxComida
var Npersonas = 330
var EspacioParaPersonas
var ReciclajeTotal = 100
const cantEd = 5

# Mostrar Info.
func mostrarEnergia():
	print(EnergiaAcomulada)
	return EnergiaAcomulada / cantEd

func mostrarAgua():
	return aguaAcomulada / cantEd

func mostrarPoblacion():
	return Npersonas / cantEd

func mostrarReciclaje():
	return ReciclajeTotal / cantEd
 
func personascomiendo():
	var n = comidaAlmacenada - Npersonas
	var m = aguaAcomulada - Npersonas
	if(n==0):
		comidaAlmacenada = 0
	elif(n < 0):
		comidaAlmacenada = 0
		Npersonas -= n
	else:
		comidaAlmacenada=n
	if(m==0):
		aguaAcomulada = 0
	elif(m < 0):
		aguaAcomulada = 0
		Npersonas -= n
	else:
		aguaAcomulada=n
		
func aumentoPoblacion():
	var n =rand_range(0,EspacioParaPersonas)
	Npersonas+=n
	
func _init():
	pass

func _on_Timer_timeout():
	#aumentoPoblacion()
	#personascomiendo()
	pass # Replace with function body.
