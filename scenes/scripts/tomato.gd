extends Control

@onready var tomato_texture := $TomatoTexture

var basic_height := 540
var breath_height := 660

func _ready() -> void:
	var tween = create_tween().set_loops()
	tween.tween_property(tomato_texture, "custom_minimum_size:y", breath_height, 0.6)
	tween.tween_property(tomato_texture, "custom_minimum_size:y", basic_height, 0.6)

func click() -> void:
	pass
