extends Button

func _on_pressed() -> void:
	Gamemanager.reset()
	get_tree().reload_current_scene()
