extends Node3D

@export var orbit_speed : float = 30.0

func _process(delta):
	rotate(Vector3.UP, deg_to_rad(orbit_speed) * delta)
