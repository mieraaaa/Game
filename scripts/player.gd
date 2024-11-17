extends CharacterBody2D

var speed = 50

func _physics_process(delta):
	var motion = Vector2.ZERO
	
	if Input.is_action_pressed("ui_right"):
		motion.x = speed
	elif Input.is_action_pressed("ui_left"):
		motion.x = -speed
	elif Input.is_action_pressed("ui_down"):
		motion.y = speed
	elif Input.is_action_pressed("ui_up"):
		motion.y = -speed
	
	velocity = motion
	move_and_slide()
