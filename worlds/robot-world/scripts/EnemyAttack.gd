extends StateBase

var damage: int = 30
var lookDir: Vector3
var lookDir2D: Vector2
@export var hitBoxCollision: CollisionShape3D
@export var vfxAnimationPlayer: AnimationPlayer

func stateUpdate(delta: float) -> void:
	if animationPlayer.is_playing() == false:
		state_machine.switchTo("ChasePlayer")
		
func enableHitBox()->void:
	print("Enable Hitbox")
	hitBoxCollision.disabled = false
	
func disableHitBox()->void:
	print("Disable Hitbox")
	hitBoxCollision.disabled = true
	
func playSmashVfx()->void:
	vfxAnimationPlayer.play("PlayParticle")
	
func enter()-> void:
	super.enter()
	
	character.velocity = Vector3.ZERO
	lookDir = character.player.global_position - character.global_position 
	lookDir2D = Vector2(lookDir.z, lookDir.x)
	
	character.visual.rotation.y = lookDir2D.angle()
	
func exit()->void:
	super.enter()
	disableHitBox()
	
