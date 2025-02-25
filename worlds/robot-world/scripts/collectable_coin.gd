extends Node3D
@onready var visual: Node3D = $VisualNode
#@onready var PickUpVfx: GPUParticles3D = $VFXNode
@onready var animationPlayer: AnimationPlayer = $AnimationPlayer

var rotateSpeed = 1
var coinValue = 1
#func _ready() -> void:
	#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	visual.rotate_y(rotateSpeed * delta)
	#if visual.visible == false && PickUpVfx.emitting == false:
		#queue_free()


func _on_area_3d_body_entered(body: Node3D) -> void:
	if body.is_in_group("Player"):
		print("Collision")
		#PickUpVfx.emitting = true
		#visual.visible = false
		animationPlayer.play("collected")
		body.AddCoin(coinValue)
		#queue_free()


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	queue_free()
