extends Area2D

@export var win_screen: CanvasLayer

func _on_body_entered(body):
	if body.is_in_group("player") and Gamemanager.has_all_diamonds():
		win_screen.visible = true
		get_tree().paused = true
