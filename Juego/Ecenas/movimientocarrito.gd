extends KinematicBody2D
export (int) var speed = 200

var target = Vector2()
var velocity = Vector2()
var seleccion = false
func _input(event):
	if event.is_action_pressed("click") and seleccion:
		target = get_global_mouse_position()
	
	

func _physics_process(delta):
	velocity = position.direction_to(target) * speed
	look_at(target)
	if position.distance_to(target) > 5:
		velocity = move_and_slide(velocity)

func _on_Button_button_down():
	seleccion = !seleccion
