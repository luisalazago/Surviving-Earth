extends Node2D
var contaminacionAire#(-1..1) -n descontamina +n contamina
var contaminacionAgua #(-1..1) -n descontamina +n contamina
var extraccionAgua  #(0..n)
var extraccionPetroleo #(0..n)
var Energia #(-n.. n) -n gasta +n produce 
var aumentoAlmaAgua
var aumentoAlmaEnergia
var aumentoAlmaPersonas





# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
