extends CharacterBody2D

var speed_impulse = 30

func _physics_process(delta):
	
	velocity.x = 0
	position.x = 28
	
	if (Input.is_action_pressed("arriba P_2")):
		velocity.y -= speed_impulse
		
	elif (Input.is_action_pressed("abajo P_2")):
		velocity.y += speed_impulse
		
	else:
		velocity.y = 0
		
	move_and_slide()
