extends CharacterBody3D

@onready var navAgent : NavigationAgent3D = $NavigationAgent3D
@onready var player: Node3D
@onready var visual: Node3D = $VisualNode
@onready var animationPlayer: AnimationPlayer = $VisualNode/AnimationPlayer

const SPEED = 0.5
var direction: Vector3
var stopDistance: float = 5 # default 2.2
#Transition Animation Walk and Idle
var defaultTimeToTransition: float = 0.1
var timeToTransitionIdle: float = 0
var timeToTransitionWalk: float = 0

var maxHealt: int = 100
var curHealt: int
var areaToFollow = 20
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	curHealt = maxHealt
	timeToTransitionIdle = defaultTimeToTransition
	timeToTransitionWalk = defaultTimeToTransition
	player = get_tree().get_first_node_in_group("Player")



func _physics_process(delta: float) -> void:
	move_and_slide()
	
func applyDamage(dmg:int)->void:
	curHealt -= dmg
	curHealt = clamp(curHealt, 0, maxHealt)
	print(name, ", healt = " , curHealt)
