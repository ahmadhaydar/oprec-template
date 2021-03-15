extends KinematicBody2D

var run_speed = 50
var velocity = Vector2.ZERO
var player = null

func flip(): #Untuk Flip Sprite menghadap ke player
	var direction = sign(player.position.x - $AnimatedSprite.global_position.x)
	if direction < 0:
		$AnimatedSprite.set_flip_h(true)
	else:
		$AnimatedSprite.set_flip_h(false)
	#Gunakkan method di atas pada physics process
	
func _physics_process(delta):
	pass
	# TODO: Implementasikan pergerakan Enemy
	# Manfaatkan method di bawah


func _on_DetectiRadius_body_entered(body):
	pass
	#TODO: Implementasikan saat enemy mendeteksi player
	# Method ini merupakan signal, Hubungkan ke Enemy node

func _on_DetectiRadius_body_exited(body):
	pass
	#TODO: Implementasikan saat player keluar area
	# Method ini merupakan signal, Hubungkan ke Enemy node


func _on_Hitbox_area_entered(area):
	pass
	# TODO: Implementasikan Hitbox peluru
	# Method ini merupakan signal, Hubungkan ke Enemy node
