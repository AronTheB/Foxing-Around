extends Area2D

@export var win_screen: CanvasLayer

func _on_body_entered(body):
	print("win area touched by: ", body.name, " | diamonds: ", Gamemanager.diamonds)
	if Gamemanager.has_all_diamonds():
		win_screen.visible = true
