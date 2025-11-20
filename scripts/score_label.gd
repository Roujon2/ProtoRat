extends Label
signal grow
signal zoom_out


var score = 0

func _on_mob_squashed():
	score += 1
	if (score %5 ==0):
		emit_signal('grow')
	if (score % 3 == 0):
		emit_signal('zoom_out')
	text = "Score: %s" % score
