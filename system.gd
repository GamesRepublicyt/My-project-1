extends Node3D

@onready var game_ui = $Control
@onready var ui = $Control/Control2



func _on_texture_button_pressed():
	
	pause_handel()
	
	pass # Replace with function body.


func pause_handel():
	
	game_ui.hide()
	ui.show()
	
	get_tree().paused = true
func resume_handel():
	ui.hide()
	game_ui.show()
	
	get_tree().paused = false
	
	
	



func _on_button_pressed():
	
	resume_handel()
	
	
	
	
	pass # Replace with function body.
