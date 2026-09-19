extends Control

@onready var tomato_counter := $TomatoPanel/TomatoCounter

func click() -> void:
	tomato_counter.text = str(GameState.tomatoes)
