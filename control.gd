extends CanvasLayer

@onready var light1 = $"../Node3D/Sketchfab_Scene/Sketchfab_model/b4138fed2411416088c172311d05dd09_fbx/RootNode/classic_street_light2/OmniLight3D"
@onready var light2 = $"../Node3D/Sketchfab_Scene/Sketchfab_model/b4138fed2411416088c172311d05dd09_fbx/RootNode/classic_street_light/OmniLight3D"
@onready var light3 = $"../Node3D/Sketchfab_Scene/Sketchfab_model/b4138fed2411416088c172311d05dd09_fbx/RootNode/classic_street_light_4/OmniLight3D"
@onready var light4 = $"../Node3D/Sketchfab_Scene/Sketchfab_model/b4138fed2411416088c172311d05dd09_fbx/RootNode/classic_street_light_3/OmniLight3D"
@onready var light5 = $"../Node3D/Sketchfab_Scene/Sketchfab_model/b4138fed2411416088c172311d05dd09_fbx/RootNode/classic_street_light_3/OmniLight3D2"
@onready var light6 = $"../Node3D/Sketchfab_Scene/Sketchfab_model/b4138fed2411416088c172311d05dd09_fbx/RootNode/classic_street_light_2/OmniLight3D"
@onready var light7 = $"../Node3D/Sketchfab_Scene/Sketchfab_model/b4138fed2411416088c172311d05dd09_fbx/RootNode/classic_street_light_2/OmniLight3D2"
@onready var light8 = $"../Node3D/Sketchfab_Scene/Sketchfab_model/b4138fed2411416088c172311d05dd09_fbx/RootNode/classic_street_light3/OmniLight3D"
@onready var light9 = $"../Node3D/Sketchfab_Scene/Sketchfab_model/b4138fed2411416088c172311d05dd09_fbx/RootNode/classic_street_light4/OmniLight3D"
@onready var light10 = $"../Node3D/Sketchfab_Scene/Sketchfab_model/b4138fed2411416088c172311d05dd09_fbx/RootNode/classic_street_light5/OmniLight3D"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_texture_button_pressed():
	
	light1.hide()
	light2.hide()
	light3.hide()
	light4.hide()
	light5.hide()
	light6.hide()
	light7.hide()
	light8.hide()
	light9.hide()
	light10.hide()
	pass # Replace with function body.





func _on_lightson_pressed():
	light1.show()
	light2.show()
	light3.show()
	light4.show()
	light5.show()
	light6.show()
	light7.show()
	light8.show()
	light9.show()
	light10.show()
	
	pass # Replace with function body.






































