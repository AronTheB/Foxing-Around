extends Area2D

@onready var _animated_sprite = $AnimatedSprite2D

func _on_body_entered(body: Node2D) -> void:
	print("+1 coin")
	_animated_sprite.play("Pickup")
	Gamemanager.add_diamond()
	queue_free()
	
	pass # Replace with function body.
