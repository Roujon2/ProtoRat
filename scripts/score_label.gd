extends Label
signal grow

var score = 0

func _on_mob_squashed():
	score += 1
	if (score %5 ==0):
		emit_signal('grow')
		
	text = "Score: %s" % score
