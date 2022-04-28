#<<<<<<< HEAD
extends Node2D
var listaEstructuras = []
##cargando lista de estructuras


#######



var contaminacionAire#(-1..1) -n descontamina +n contamina
var contaminacionAgua #(-1..1) -n descontamina +n contamina
var extraccionAgua  #(0..n)
var extraccionPetroleo #(0..n)
var Energia #(-n.. n) -n gasta +n produce 
var aumentoAlmaAgua
var aumentoAlmaEnergia
var aumentoAlmaPersonas


class estructuras:
	var contaminacionAire#(-1..1) -n descontamina +n contamina
	var contaminacionAgua #(-1..1) -n descontamina +n contamina
	var extraccionAgua  #(0..n)
	var extraccionPetroleo #(0..n)
	var Energia #(-n.. n) -n gasta +n produce 
	var aumentoAlmaAgua
	var aumentoAlmaEnergia
	var aumentoAlmaPersonas
	var animacion

func construir(n):
	if(listaEstructuras.size()<n):
		#carga la estructura
		pass
	else:
		#carga estructura default
		pass




