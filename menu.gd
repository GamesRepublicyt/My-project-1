extends Control

func _process(delta):
	
	pass

func _on_button_pressed():
	$"../AudioStreamPlayer2".play()
	Load.load_scene = "res://main.tscn"
	get_tree().change_scene_to_packed(Load.loader)
	
	
	pass # Replace with function body.



func _on_exit_pressed():
	$"../AudioStreamPlayer2".play()
	get_tree().quit()
	
	
	
	
	
	
	pass # Replace with function body.

func _on_about_pressed():
	$"../AudioStreamPlayer2".play()
	get_tree().change_scene_to_file("res://about.tscn")
	
	pass # Replace with function body.


















