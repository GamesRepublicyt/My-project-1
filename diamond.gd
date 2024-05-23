extends Node3D


# Called when the node enters the scene tree for the first time.

func _on_static_body_3d_body_entered(body):
	
	$AnimationPlayer.play("dimond1_cole")
	queue_free()
	$"../Sketchfab_Scene/AnimationPlayer".play("door")
	pass # Replace with function body.
