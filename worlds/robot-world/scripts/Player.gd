extends CharacterBody3D

@onready var camera = $Head/Camera3D
const SPEED = 5.0
const JUMP_VELOCITY = 4.5

var mouse_sensitivity = 0.7 # if mouse 0.04
var rotation_vertical = 0.0  # Rotasi pada sumbu X 
var coinNumber:int:
		set(new_value):
			coinNumber = new_value
			emit_signal("coinNumberUpdated", coinNumber)

signal coinNumberUpdated(newValue)

var maxHp: int = 100
var curHp: int:
		set(new_value):
			curHp = new_value
			emit_signal("hpNumberUpdated", curHp)
	
signal hpNumberUpdated(newValue)

func _ready() -> void:
	AddHp(maxHp)
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
	#Input.mouse_mode = Input.MOUSE_MODE_CAPTURED

#func _input(event: InputEvent) -> void:
  	#
	#if event is InputEventMouseMotion: 
		#rotation.y -= deg_to_rad(event.relative.x * mouse_sensitivity) #Horizontal
		
		#rotation_vertical -= deg_to_rad(event.relative.y * mouse_sensitivity) #vertical
		#rotation_vertical = clamp(rotation_vertical, deg_to_rad(-60), deg_to_rad(70)) 	 	# Batasi rotasi vertikal agar tidak over-rotate
		#camera.rotation.x = rotation_vertical
		#if event.pressed:
			##Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
			#Input.mouse_mode = Input.MOUSE_MODE_CAPTURED


func _physics_process(delta: float) -> void:
	var dir = Vector2(Input.get_axis("rotate_left", "rotate_right"), 
		Input.get_axis("rotate_up", "rotate_down"))
		
	rotation_vertical -= deg_to_rad(dir.y * mouse_sensitivity) #vertical
	rotation_vertical = clamp(rotation_vertical, deg_to_rad(-60), deg_to_rad(70)) 	 	# Batasi rotasi vertikal agar tidak over-rotate
	camera.rotation.x = rotation_vertical
	
	rotation.y -= deg_to_rad(dir.x * mouse_sensitivity) #Horizontal
		
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	#var input_dir := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	var input_dir := Input.get_vector("left", "right", "up", "down")
	var direction := (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)

	move_and_slide()
	
func AddHp(value: int)->void:
	curHp += value
	print("Hp add: " + str(value) + ", curHp: " + str(curHp))
	
	
func AddCoin(value:int)->void:
	coinNumber += value
	print("Coin add: " + str(coinNumber))
