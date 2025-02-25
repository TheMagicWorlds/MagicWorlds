#extends Camera3D
extends Node3D
var ray_length := 1000.0

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		print("Left Click")
		var camera = get_viewport().get_camera_3d()
		if not camera:
			return
		var from = camera.project_ray_origin(event.position)
		var to   = from + camera.project_ray_normal(event.position) * ray_length
		_cast_ray(from, to)

func _cast_ray(from: Vector3, to: Vector3) -> void:
	var space_state: PhysicsDirectSpaceState3D = get_world_3d().direct_space_state
	
	var query := PhysicsRayQueryParameters3D.new()
	query.from = from
	query.to = to

	var result: Dictionary = space_state.intersect_ray(query)
	if result.size() > 0:
		var clicked_object = result.collider
		if clicked_object:
			print("Anda mengklik objek bernama: %s" % clicked_object.name)
			# Lakukan apa pun yang diinginkan, mis. memanggil fungsi di clicked_object
			# clicked_object.some_method()
			
			
#func _input(event):
	## Periksa jika ada klik mouse kiri
	#if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		## Kirimkan ray dari posisi kursor
		#var from = project_ray_origin(get_viewport().get_mouse_position())
		#var to = from + project_ray_normal(get_viewport().get_mouse_position()) * 1000
		## Gunakan direct_space_state untuk mendeteksi tabrakan
		#var space_state = get_world_3d().direct_space_state
		#var result = space_state.intersect_ray(from, to)
		#
		## Jika ada tabrakan, tampilkan informasi
		#if result and result.collider:
			#print("Klik pada objek:", result.collider.name)
