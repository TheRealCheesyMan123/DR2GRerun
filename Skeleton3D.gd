extends Node3D

func start_ragdoll():
	var skeleton = $Skeleton3D
	if skeleton:
		skeleton.physical_bones_start_simulation()
		for bone in skeleton.get_children():
			if bone is PhysicalBone3D:
				bone.linear_velocity = Vector3.ZERO
				bone.angular_velocity = Vector3.ZERO


	# Optional: enable colliders, physics, etc. if you disabled them
