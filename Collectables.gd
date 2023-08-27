extends Node2D



var Cherry = preload("res://Collectables/cherry.tscn")



func _on_timer_timeout():
	var cherryTemp = Cherry.instantiate()
	var rng = RandomNumberGenerator.new()
	var ranint = rng.randi_range(10, 1400)
	var raninty = rng.randi_range(400, 415)
	
	cherryTemp.position = Vector2(ranint, raninty)
	add_child(cherryTemp)
