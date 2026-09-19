extends Button

func _on_pressed() -> void:
	GameState.close_settings.emit()
