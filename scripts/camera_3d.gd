extends Camera3D

#var mouse_sensitivity = 0.1
#var rotation_vertical = 0.0  # Rotasi pada sumbu X 
## Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	#Input.mouse_mode = Input.MOUSE_MODE_CAPTURED


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass
	
#func _input(event: InputEvent) -> void:
	#if event is InputEventMouseMotion:  # Tangkap gerakan mouse dan ubah rotasi
		##rotation.y -= deg_to_rad(event.relative.x * mouse_sensitivity) #Horizontal
		#rotation_vertical -= deg_to_rad(event.relative.y * mouse_sensitivity) #vertical
	 	## Batasi rotasi vertikal agar tidak over-rotate
		#rotation_vertical = clamp(rotation_vertical, deg_to_rad(-89), deg_to_rad(89))
		#rotation.x = rotation_vertical
