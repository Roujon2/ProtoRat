extends Path3D


func expand_spawn_path(amount := 2.0):
	scale += Vector3(amount *0.1, 0, amount *0.1)
	
