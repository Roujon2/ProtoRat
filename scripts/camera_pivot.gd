extends Marker3D

@onready var camera := $Camera3D

func zoom_out(amount := 2.0, move_up := 1.0, duration := 0.4):
	var tween := create_tween()

	# Zoom camera (orthographic)
	tween.tween_property(
		camera,
		"size",
		camera.size + amount,
		duration
	).set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_OUT)

	# Move camera pivot upward
	tween.parallel().tween_property(
		self,
		"position:y",
		self.position.y + move_up,
		duration
	).set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_OUT)

	
