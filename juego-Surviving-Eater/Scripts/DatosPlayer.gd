extends Node

#DatosDel jugador
var EnergiaAcomulada
var petroleoAcomulado
var aguaAcomulada
var comidaAlmacenada
var maxEnergia
var maxPetroleo
var maxAgua
var maxComida
var Npersonas
var EspacioParaPersonas
 
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
