class_name StateBase
extends Node

var state_machine : StateMachine
var character: CharacterBody3D
var animationPlayer : AnimationPlayer
@export var animationNames : String = ' '

func enter()-> void:
	print("Entering State", name, "animName: " , animationNames)
	animationPlayer.play(animationNames)
	pass
	
func exit() -> void:
	print("Exit State", name)
	pass

func stateUpdate(delta: float) -> void:
	pass
	
func showInfo() -> void:
	print(name, "/", character, "/", state_machine)
	
