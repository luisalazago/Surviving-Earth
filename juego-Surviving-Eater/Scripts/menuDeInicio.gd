extends Node

func cargarJuego():
	var mundo = load("res://Ecenas/Mundo.tscn")
	var instancia_mundo = mundo.instance()
	get_tree().root.add_child(instancia_mundo)
	queue_free() # free the memory of the system.

func salirDelJuego():
	get_tree().quit()

func _ready():
	pass # Replace with function body.

func _on_ButtonInicio_button_up():
	cargarJuego()

func _on_ButtonSalir_button_up():
	salirDelJuego()

func _on_ButtonInicio2_button_up():
	salirDelJuego()
