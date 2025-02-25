extends Node3D

@export var rotation_speed = 10
#@export var target_object: Node3D
#@export var rovolution_speed = 10
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	rotation.y += deg_to_rad(rotation_speed) * delta
