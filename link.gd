extends Control




func _on_button_pressed():
	$"../AudioStreamPlayer2".play()
	get_tree().change_scene_to_file("res://ui.tscn")
	
	pass # Replace with function body.
