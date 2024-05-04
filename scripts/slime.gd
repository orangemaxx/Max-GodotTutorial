extends Node2D

@onready var animated_sprite = $AnimatedSprite2D
@onready var raycast_right = $RaycastRight
@onready var raycast_left = $RaycastLeft

const slimespeed = 60

var direction = 1


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if raycast_left.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
	if raycast_right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	
	position.x += direction * slimespeed * delta
