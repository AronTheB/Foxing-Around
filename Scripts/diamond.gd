extends Area2D

@onready var _animated_sprite = $AnimatedSprite2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer

var collected = false

func _on_body_entered(body: Node2D) -> void:
	if collected:
		return
	collected = true
	set_deferred("monitoring", false)
	print("+1 coin")
	Gamemanager.add_diamond()
	animation_player.play("Pickup")
	
	
	pass # Replace with function body.
