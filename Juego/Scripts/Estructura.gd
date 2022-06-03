#<<<<<<< HEAD
extends Node2D
var listaEstructuras = []
##cargando dato de estructuras
func cargardatos(CAi,CAg,ExAg,ExtP,Ene,AuAg,AuEn,AumP,bas,Aumbas,costoM,anim):
	var dato = estructuras.new()
	dato.contaminacionAire = CAg
	dato.contaminacionAgua = CAi
	dato.extraccionAgua = ExAg
	dato.extraccionPetroleo = ExtP
	dato.Energia = Ene
	dato.aumentoAlmaAgua = AuAg
	dato.aumentoAlmaEnergia = AuEn
	dato.aumentoAlmaPersonas =AumP
	dato.basura=bas
	dato.aumentoAlmaBasura = bas
	dato.animacion=anim
	dato.costomineral=costoM
	listaEstructuras.append(dato)
#######

func cargarListaEstructuras():
	# 0 default
	cargardatos(0,0,0,0,0,0,0,0,0,0,0,"default")
	# 1 vacio
	cargardatos(0,0,0,0,0,0,0,0,0,0,0,"vacio")



var contaminacionAire#(-1..1) -n descontamina +n contamina
var contaminacionAgua #(-1..1) -n descontamina +n contamina
var extraccionAgua  #(0..n)
var extraccionPetroleo #(0..n)
var Energia #(-n.. n) -n gasta +n produce 
var aumentoAlmaAgua
var aumentoAlmaEnergia
var aumentoAlmaPersonas
var basura
var aumentoAlmaBasura

class estructuras:
	var contaminacionAire:int#(-1..1) -n descontamina +n contamina
	var contaminacionAgua:int #(-1..1) -n descontamina +n contamina
	var extraccionAgua:int  #(0..n)
	var extraccionPetroleo:int #(0..n)
	var Energia:int #(-n.. n) -n gasta +n produce 
	var aumentoAlmaAgua:int
	var aumentoAlmaEnergia:int
	var aumentoAlmaPersonas:int
	var basura:int 
	var aumentoAlmaBasura:int
	var costomineral:int
	var vidaEdificio:int
	var animacion: String # string de la animacion


signal cambiarAnimacion(nombre)


func _init():
	cargarListaEstructuras()

func construir(n):
	
	if(listaEstructuras.size()>=n):
		n=0
	var dato = listaEstructuras[n]
	if(listaEstructuras[n].)
	emit_signal("cambiarAnimacion",dato.animacion)
	







func funcionamientoedificio():
	

func _on_construir_0_button_down():
	construir(0)
	pass # Replace with function body.
