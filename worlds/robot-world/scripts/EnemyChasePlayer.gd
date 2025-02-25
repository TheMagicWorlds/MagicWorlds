extends StateBase

var stopDistance: float = 5 # default 2.2
#@onready var navAgent : NavigationAgent3D = $NavigationAgent3D

func stateUpdate(delta: float) -> void:
	character.navAgent.target_position = character.player.global_position #from enemy
	character.direction = character.navAgent.get_next_path_position() - character.global_position
	#print(str(player.global_position))
	character.direction.normalized()
	#

		#timeToTransitionIdle -= delta
		#timeToTransitionWalk = defaultTimeToTransition
		#if timeToTransitionIdle <= 0:
			#animationPlayer.play("NPC_01_IDEL")
		#return
		
		
	#timeToTransitionIdle = defaultTimeToTransition
	#
	#timeToTransitionWalk -= delta
	#if timeToTransitionWalk <= 0:
		#animationPlayer.play("NPC_01_WALK")
	character.velocity = character.velocity.lerp(character.direction * character.SPEED, delta)
	if character.velocity.length() > 0.2:
		var lookDir = Vector2(character.velocity.z, character.velocity.x)
		character.visual.rotation.y = lookDir.angle()
		
	if character.navAgent.distance_to_target() < stopDistance:
		state_machine.switchTo("Attack")
		
	if character.navAgent.distance_to_target() > character.areaToFollow:
		state_machine.switchTo("Idle")
	if character.curHealt < 0:
		state_machine.switchTo("Dead")
