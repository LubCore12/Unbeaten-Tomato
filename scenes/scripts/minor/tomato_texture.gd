extends TextureButton

func _on_pressed() -> void:
	GameState.tomato_clicked.emit()
