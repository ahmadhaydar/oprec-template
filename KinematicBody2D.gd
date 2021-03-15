extends KinematicBody2D

#Set variabel awal untuk player
var bullet = preload("res://Bullet.tscn") # Hint: jika ingin menembak

func _ready():
	pass
	# TODO
	
func flip(): # Pakai Function ini untuk flip sprite player menghadap mouse
	var direction = sign(get_global_mouse_position().x - $AnimatedSprite.global_position.x)
	if direction < 0:
		$AnimatedSprite.set_flip_h(true)
	else:
		$AnimatedSprite.set_flip_h(false)
	# Gunakkan dalam _physics_process(delta)
func _physics_process(delta):
	pass
	# TODO : Implementasikan Movement dan animasi player
	# Buatlah player agar dapat bergerak dan menembak

func fire():
	$Camera2D.add_trauma(0.15)
	pass # TODO: Implementasikan penembakan

# Next TODO: Implementasikan Camera dalam scene player
