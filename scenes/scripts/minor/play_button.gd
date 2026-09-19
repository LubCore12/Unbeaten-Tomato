extends Button

func _on_pressed() -> void:
	GameState.start_game.emit()
