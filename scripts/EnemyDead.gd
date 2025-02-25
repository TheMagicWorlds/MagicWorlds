extends StateBase

@export var collisionShape3d: CollisionShape3D
@export var materialEffectAnimationPlayer: AnimationPlayer

func enter()-> void:
	super.enter()
	character.velocity = Vector3.ZERO
	collisionShape3d.disabled = true
	materialEffectAnimationPlayer.play("Dead")
	await get_tree().create_timer(3).timeout
	character.queue_free()
