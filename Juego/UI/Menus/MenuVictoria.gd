## MenuVictoria.gd
extends Control

## Seniales internas
func _on_BotonMenu_pressed():
	get_tree().change_scene("res://Juego/UI/Menus/MenuPrincipal.tscn")

func _on_BotonSalir_pressed():
	get_tree().quit()
