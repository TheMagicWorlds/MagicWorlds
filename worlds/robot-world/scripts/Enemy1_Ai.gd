extends CharacterBody3D


#const SPEED = 5.0
#const JUMP_VELOCITY = 4.5
@onready var animationPlayer: AnimationPlayer = $VisualNode/AnimationPlayer
@onready var label_3d: Label3D = $Label3D

@export var allMessage: Array[String] = []
@export var waitingTime: float = 8
var curWaitTime: float = 0
var curIndex: int = 0
func _ready() -> void:
	curIndex = -1
	resetWaitTime()
	animationPlayer.play("LittleAdventurerAndie_Idel")
	
func resetWaitTime()-> void:
	curWaitTime = waitingTime
	curIndex += 1
	if curIndex >= allMessage.size():
		curIndex = 0
	label_3d.text = allMessage[curIndex]
	print("curIndex STring:" + str(curIndex))
	
func _physics_process(delta: float) -> void:
	if curWaitTime > 0:
		curWaitTime -= delta
	else:
		resetWaitTime()
		
#func _physics_process(delta: float) -> void:
	## Add the gravity.
	#if not is_on_floor():
		#velocity += get_gravity() * delta
#
	## Handle jump.
	#if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		#velocity.y = JUMP_VELOCITY
#
	## Get the input direction and handle the movement/deceleration.
	## As good practice, you should replace UI actions with custom gameplay actions.
	#var input_dir := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	#var direction := (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	#if direction:
		#velocity.x = direction.x * SPEED
		#velocity.z = direction.z * SPEED
	#else:
		#velocity.x = move_toward(velocity.x, 0, SPEED)
		#velocity.z = move_toward(velocity.z, 0, SPEED)
#
	#move_and_slide()
