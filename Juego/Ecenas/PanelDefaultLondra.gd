extends Panel

func _ready():
	pass

func activarPanel():
	visible = !visible

func _on_Button_button_down():
	activarPanel()
	pass # Replace with function body.
