# MotorSFX.gd
class_name Motor
extends AudioStreamPlayer2D

## Atributos export
export var tiempo_transicion: float = 0.8
export var volumen_apagado: float = -35.0

## Atributos onready
onready var tween_sonido: Tween = $Tween

## Atributos
var volumen_original: float

## Metodos
func _ready():
	volumen_original = volume_db
	volume_db = volumen_apagado

## Metodos custom
func sonido_on() -> void:
	if not playing:
		play()
	
	efecto_transicion(volume_db, volumen_original)

func sonido_off():
	efecto_transicion(volume_db, volumen_apagado)

func efecto_transicion(desde_vol: float, hasta_vol: float) -> void:
	tween_sonido.interpolate_property(
		self,
		"volume_db",
		desde_vol,
		hasta_vol,
		tiempo_transicion,
		Tween.TRANS_LINEAR,
		Tween.EASE_OUT_IN
	)
	tween_sonido.start()
