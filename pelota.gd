extends CharacterBody2D

var impulse_speed = 200
var speed_increment = 10
var time_interval = 5
var timer = 0

func _ready():
	
	if randi()% 2 == 0 :
		velocity.x += impulse_speed
		
	else: 
		velocity.x -=impulse_speed


	if randi()% 2 == 0 :
		velocity.y += impulse_speed
		
	else: 
		velocity.y -=impulse_speed
