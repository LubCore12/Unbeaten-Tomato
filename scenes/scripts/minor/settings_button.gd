extends TextureButton

func _on_pressed() -> void:
	GameState.open_settings.emit()
