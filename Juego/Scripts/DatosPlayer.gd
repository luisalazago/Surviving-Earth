extends Node

export var ciudad = 0
#DatosDel jugador
const nivelMax=2
var nivel=0
var identificador=0
var EnergiaAcomulada = 100
var petroleoAcomulado = 50
var aguaAcomulada = 100
var comidaAlmacenada = 100
var Mineral=10
var maxEnergia=30
var maxPetroleo=50
var maxAgua=20
var maxComida =10
var maxBasura=10
var maxMineral=10
var Npersonas = 330
var EspacioParaPersonas=100
var basuraAcomulada = 100
var PrecioActualizacion=100
const cantEd = 5

func cambiarDatosdefault(maxE,MaxP, MaxA,MaxC,EsP,MaxM ,MaxB,energAco,petroleoA,AguaA,comidAl,Nperso,Miner,basura):
	
	EnergiaAcomulada=energAco
	petroleoAcomulado=petroleoA
	aguaAcomulada=AguaA
	comidaAlmacenada=comidAl
	Mineral=Miner
	maxEnergia=maxE
	maxPetroleo=MaxP
	maxAgua=MaxA
	maxComida=MaxC
	maxBasura=MaxB
	maxMineral=MaxM
	Npersonas=Nperso
	basuraAcomulada=basura
	
func actualizar(maxE,MaxP,MaxA,MaxC,espP,MaxM,MaxB):	
	maxEnergia+=maxE
	maxPetroleo+=MaxP
	maxAgua+=MaxA
	maxComida+=MaxC
	maxBasura+=MaxB
	maxMineral+=MaxM	
	nivel+=1
		
func actualizarCiudad(id):
	if(Mineral >= PrecioActualizacion and nivel<=nivelMax):
		Mineral-=PrecioActualizacion
		if (id==1):
			actualizar(110,150,100,100,120,500,1000)
		elif(id==2):
			actualizar(100,100,80,100,100,800,900)
		elif(id==3):
			actualizar(220,200,190,200,200,600,1500)
		elif(id==4):
			actualizar(140,200,130,150,110,550,1200)	
	
# Mostrar Info.
func mostrarEnergia():
	print(EnergiaAcomulada)
	return EnergiaAcomulada / cantEd

func mostrarAgua():
	return aguaAcomulada / cantEd

func mostrarPoblacion():
	return Npersonas / cantEd

#func mostrarReciclaje():
	#return ReciclajeTotal / cantEd
 
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
	var n = rand_range(0,int(EspacioParaPersonas/2))
	Npersonas  += n
	
func _init():
	identificador = ciudad
	var id=identificador
	if (id==1):
			cambiarDatosdefault(110,150,100,100,120,500,1000,6,10,5,5,2,6,10)
	elif(id==2):
			cambiarDatosdefault(110,150,100,100,120,500,1000,6,10,5,5,2,6,10)
	elif(id==3):
			cambiarDatosdefault(110,150,100,100,120,500,1000,6,10,5,5,2,6,10)
	elif(id==4):
			cambiarDatosdefault(110,150,100,100,120,500,1000,6,10,5,5,2,6,10)
	pass

func gastoYProduccion (Ener,petro,comid,mine,basur):
	EnergiaAcomulada += Ener
	petroleoAcomulado += petro
	aguaAcomulada += comid
	comidaAlmacenada += mine
	basuraAcomulada +=basur

func inpactoAnviental(contAg,contAi):
	DatosMundo.contaminarAgua(contAg)
	DatosMundo.contaminarAire(contAi)
	
	
func _on_Timer_timeout():
	aumentoPoblacion()
	personascomiendo()
	var id=identificador
	if (id==1):
			gastoYProduccion(0,0,0,0,0)
			inpactoAnviental(0,0)
	elif(id==2):
			gastoYProduccion(0,0,0,0,0)
			inpactoAnviental(0,0)
	elif(id==3):
			gastoYProduccion(0,0,0,0,0)
			inpactoAnviental(0,0)
	elif(id==4):
			gastoYProduccion(0,0,0,0,0)
			inpactoAnviental(0,0)
	
	pass # Replace with function body.


func _on_ButtonMejorar_button_down():
	actualizarCiudad(identificador)
	


func _on_ButtonActualizarCiudad_button_up():
	actualizarCiudad(identificador)
