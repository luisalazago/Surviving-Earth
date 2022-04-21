extends Node
export(PackedScene) var Mundo

func cargarJuego():
	get_tree().change_scene_to(Mundo)
	pass

func salirDelJuego():
	get_tree().quit()

func _ready():
	pass # Replace with function body.









func _on_ButtonInicio_button_up():
	cargarJuego()
	
