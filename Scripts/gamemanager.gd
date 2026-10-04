extends Node

signal diamonds_changed(count)

const TOTAL_DIAMONDS = 7
var diamonds = 0

func add_diamond():
	diamonds += 1
	diamonds_changed.emit(diamonds)

func has_all_diamonds() -> bool:
	return diamonds >= TOTAL_DIAMONDS

func reset():
	diamonds = 0
	diamonds_changed.emit(diamonds)
