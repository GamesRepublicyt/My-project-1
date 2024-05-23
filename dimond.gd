extends Area3D

var dimond_count = 0
@onready var dimond2 = $"../../../diamond2/AnimationPlayer"
@onready var dimond1 = $"../../An$"
@onready var door = $"../../../Sketchfab_Scene/Sketchfab_model/Collada visual scene group/DoorWood_low/AnimationPlayer"

func _on_static_body_3d_body_entered(body):
	
	dimond2.play("dimond_coe")
	
	
	
	pass # Replace with function body.


func _on_animation_player_animation_finished(anim_name):
	
	dimond_count + 1
	
	$"../../../diamond2".queue_free()
	
	
	
	
	
	pass # Replace with function body.


func _on_body_entered(body):
	
	
	dimond1.play("dimond1_cole")
	
	
	
	
	
	pass # Replace with function body.


func _on_animation_player_animation_finished1(anim_name):
	
	
	dimond_count + 1
	
	$"../..".queue_free()
	
	
	
	pass # Replace with function body.
	
	
	if dimond_count > 1:
		door.play("door")



















