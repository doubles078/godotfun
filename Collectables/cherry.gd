extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if body.name == "Player":
		Game.Gold += 5
		
		var tween = get_tree().create_tween()
		var tween1 = get_tree().create_tween()
		
		# Subtract 150 from the y axis 
		tween.tween_property(self, "position", position - Vector2(0,25), 0.5)
		tween1.tween_property(self, "modulate:a", 0, 0.2)
		tween.tween_callback(queue_free)
	pass # Replace with function body.
