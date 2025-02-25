extends Control
@onready var coinLabel:Label = $HBoxContainer/Label
@onready var hpLabel:Label = $HBoxHp/Label

@export var player:Node3D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	player.coinNumberUpdated.connect(UpdateCoinLable)
	player.hpNumberUpdated.connect(UpdateHpLable)


## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass
	
func UpdateCoinLable(newValue:int)->void:
	coinLabel.text = str(newValue)
	
func UpdateHpLable(newValue:int)->void:
	hpLabel.text = "HP: " + str(newValue)
