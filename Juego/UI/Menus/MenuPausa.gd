# MenuPausa.gd
extends Control

## Metodos
func _ready():
	visible = false

func _input(event):
	if event.is_action_pressed("pausa"):
		visible = not visible
		get_tree().paused = not get_tree().paused
	if visible:
			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	else:
			Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

## Seniales internas
func _on_BotonContinuar_pressed():
	get_tree().paused = false
	visible = false

func _on_BotonMenu_pressed():
	get_tree().paused = false
	get_tree().change_scene("res://Juego/UI/Menus/MenuPrincipal.tscn")

func _on_BotonSalir_pressed():
	get_tree().quit()
