extends StateBase

var spawnDuration : float = 1.5
@export var materialEffectAnimationPlayer : AnimationPlayer

func enter()->void:
	super.enter()
	materialEffectAnimationPlayer.play("Spawn")
	
func stateUpdate(delta: float) -> void:
	spawnDuration -= delta
	if spawnDuration <= 0:
		state_machine.switchTo("Idle")
		#state_machine.switchTo("ChasePlayer")
	
