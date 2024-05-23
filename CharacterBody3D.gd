extends CharacterBody3D


const SPEED = 5.0
const JUMP_VELOCITY = 4.5
@onready var head = $head
@onready var sens = 0.50
@onready var anime= $AuxScene/AnimationPlayer
@onready var visual = $AuxScene/Node/Skeleton3D/Ch19
@onready var arms = $AuxScene/Node
const leep_vell = .15
@onready var audio = $"../audio/AudioStreamPlayer3D"
@onready var animesound = $"../audio/AnimationPlayer"
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")

func _input(event):
	if event is InputEventScreenDrag:
		rotate_y(deg_to_rad(-event.relative.x * sens))
		visual.rotate_y(deg_to_rad(event.relative.x * sens))
		head.rotate_x(deg_to_rad(-event.relative.y * sens))
		head.rotation.x = clamp(head.rotation.x, deg_to_rad(-90), deg_to_rad(45))





func _physics_process(delta):
	
	if not is_on_floor():
		velocity.y -= gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down") 
	var direction = (transform.basis * Vector3(-input_dir.x, 0, -input_dir.y)).normalized()
	
	if direction and is_on_floor():
		anime.play("StandardRun0")
		animesound.play("sound")
	elif is_on_floor():
		anime.play("BreathingIdle-2024-05-05T2341000")
		animesound.stop()
	if Input.is_action_pressed("ui_accept"):
		anime.play("Jumping-2024-05-05T2339550")
	
	
	
	
	if direction:
		arms.rotation.y = lerp_angle(arms.rotation.y, atan2(velocity.x, velocity.z), leep_vell)
		
		
		
		
		
		
		
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)

	move_and_slide()

func  play_sound():
	
	audio.pitch_scale = randf_range(.8,1.2)
	audio.play()
	
	pass
















