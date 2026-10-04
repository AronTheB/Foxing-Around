extends Label

func _ready():
	update_text(Gamemanager.diamonds)
	Gamemanager.diamonds_changed.connect(update_text)

func update_text(count):
	text = "Diamonds: %d / %d" % [count, Gamemanager.TOTAL_DIAMONDS]
