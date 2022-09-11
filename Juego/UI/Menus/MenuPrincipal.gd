# MenuPrincipal.gd
extends Node

export(String, FILE, "*.tscn") var nivel_inicial = ""

func _ready():
	#OS.set_window_fullscreen(true)
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	MusicaJuego.play_musica(MusicaJuego.get_lista_musicas().menu_principal)

func _on_BotonJugar_pressed() -> void:
	MusicaJuego.play_boton()
	get_tree().change_scene(nivel_inicial)

func _on_BotonTutorial_pressed():
	MusicaJuego.play_boton()
	get_tree().change_scene("res://Juego/Niveles/NivelTutorial.tscn")

func _on_ButtonSalir_pressed():
	get_tree().quit()
