extends Control

@onready var menu := $Menu
@onready var settings_button := $SettingsButton
@onready var play_button := $Menu/Buttons/PlayButton
@onready var settings_menu := $Settings
@onready var transition_rect := $TransitionRect
@onready var tomato := $MainGame/Tomato
@onready var main_ui := $MainGame/MainGameUI

func _ready() -> void:
	menu.show()
	
	GameState.start_game.connect(start_game)
	GameState.open_settings.connect(open_settings)
	GameState.close_settings.connect(close_settings)
	GameState.tomato_clicked.connect(tomato_clicked)

func start_game() -> void:
	transition_rect.show()
	
	var tween = create_tween()
	tween.set_trans(Tween.TRANS_SINE)
	tween.set_ease(Tween.EASE_IN_OUT)
	tween.tween_property(transition_rect, "modulate:a", 1, 0.6)
	tween.tween_callback(menu.hide)
	tween.tween_interval(1)
	tween.tween_property(transition_rect, "modulate:a", 0, 0.45)
	tween.tween_callback(transition_rect.hide)

func tomato_clicked() -> void:
	GameState.tomatoes += 1
	tomato.click()
	main_ui.click()

func open_settings() -> void:
	settings_menu.show()
	
func close_settings() -> void:
	settings_menu.hide()
