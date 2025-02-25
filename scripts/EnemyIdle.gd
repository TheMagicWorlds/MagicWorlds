extends StateBase


func enter()-> void:
	super.enter()
	
func stateUpdate(delta: float) -> void:
	character.navAgent.target_position = character.player.global_position #from enemy
	if character.navAgent.distance_to_target() < character.areaToFollow:
		state_machine.switchTo("ChasePlayer")
