extends StaticBody2D

var plant = world.plantSelected
var plantgrowing = false
var plant_grown = false

func _physics_process(delta):
	if not plantgrowing:
		plant = world.plantSelected

func _on_area_2d_area_entered(area):
	if not plantgrowing:
		if plant == 1:
			plantgrowing = true
			$carrot_growtimer.start()
			$plant.play("carrot_grow")
		elif plant == 2:
			plantgrowing = true
			$spinach_growtimer.start()
			$plant.play("spinach_grow")
		elif plant == 3:
			plantgrowing = true
			$potato_growtimer.start()
			$plant.play("potato_grow")
		elif plant == 4:
			plantgrowing = true
			$turnip_growtimer.start()
			$plant.play("turnip_grow")
		elif plant == 5:
			plantgrowing = true
			$onion_growtimer.start()
			$plant.play("onion_grow")
		elif plant == 6:
			plantgrowing = true
			$radish_growtimer.start()
			$plant.play("radish_grow")
	else:
		pass

func _on_carrot_growtimer_timeout():
	var carrot_plant = $plant
	if carrot_plant.frame == 0:
		carrot_plant.frame = 1
		$carrot_growtimer.start()
	elif carrot_plant.frame == 1:
		carrot_plant.frame = 2
		$carrot_growtimer.start()
	elif carrot_plant.frame == 2:
		carrot_plant.frame = 3
		$carrot_growtimer.start()
	elif carrot_plant.frame == 3:
		carrot_plant.frame = 4
		plant_grown = true
		plantgrowing = false
		$carrot_growtimer.stop()

func _on_spinach_growtimer_timeout():
	var spinach_plant = $plant
	if spinach_plant.frame == 0:
		spinach_plant.frame = 1
		$spinach_growtimer.start()
	elif spinach_plant.frame == 1:
		spinach_plant.frame = 2
		$spinach_growtimer.start()
	elif spinach_plant.frame == 2:
		spinach_plant.frame = 3
		$spinach_growtimer.start()
	elif spinach_plant.frame == 3:
		spinach_plant.frame = 4
		plant_grown = true
		plantgrowing = false
		$spinach_growtimer.stop()

func _on_potato_growtimer_timeout():
	var potato_plant = $plant
	if potato_plant.frame == 0:
		potato_plant.frame = 1
		$potato_growtimer.start()
	elif potato_plant.frame == 1:
		potato_plant.frame = 2
		$potato_growtimer.start()
	elif potato_plant.frame == 2:
		potato_plant.frame = 3
		$potato_growtimer.start()
	elif potato_plant.frame == 3:
		potato_plant.frame = 4
		plant_grown = true
		plantgrowing = false
		$potato_growtimer.stop()

func _on_turnip_growtimer_timeout():
	var turnip_plant = $plant
	if turnip_plant.frame == 0:
		turnip_plant.frame = 1
		$turnip_growtimer.start()
	elif turnip_plant.frame == 1:
		turnip_plant.frame = 2
		$turnip_growtimer.start()
	elif turnip_plant.frame == 2:
		turnip_plant.frame = 3
		$turnip_growtimer.start()
	elif turnip_plant.frame == 3:
		turnip_plant.frame = 4
		plant_grown = true
		plantgrowing = false
		$turnip_growtimer.stop()

func _on_onion_growtimer_timeout():
	var onion_plant = $plant
	if onion_plant.frame == 0:
		onion_plant.frame = 1
		$onion_growtimer.start()
	elif onion_plant.frame == 1:
		onion_plant.frame = 2
		$onion_growtimer.start()
	elif onion_plant.frame == 2:
		onion_plant.frame = 3
		$onion_growtimer.start()
	elif onion_plant.frame == 3:
		onion_plant.frame = 4
		plant_grown = true
		plantgrowing = false
		$onion_growtimer.stop()

func _on_radish_growtimer_timeout():
	var radish_plant = $plant
	if radish_plant.frame == 0:
		radish_plant.frame = 1
		$radish_growtimer.start()
	elif radish_plant.frame == 1:
		radish_plant.frame = 2
		$radish_growtimer.start()
	elif radish_plant.frame == 2:
		radish_plant.frame = 3
		$radish_growtimer.start()
	elif radish_plant.frame == 3:
		radish_plant.frame = 4
		plant_grown = true
		plantgrowing = false
		$radish_growtimer.stop()

func _on_area_2d_input_event(viewport, event, shape_idx):
	if Input.is_action_just_pressed("click"):
		if plant_grown:
			if plant == 1:
				world.numof_carrot += 1
				plantgrowing = false
				plant_grown = false
				$plant.play("no_plant")
			elif plant == 2:
				world.numof_spinach += 1
				plantgrowing = false
				plant_grown = false
				$plant.play("no_plant")
			elif plant == 3:
				world.numof_potato += 1
				plantgrowing = false
				plant_grown = false
				$plant.play("no_plant")
			elif plant == 4:
				world.numof_turnip += 1
				plantgrowing = false
				plant_grown = false
				$plant.play("no_plant")
			elif plant == 5:
				world.numof_onion += 1
				plantgrowing = false
				plant_grown = false
				$plant.play("no_plant")
			elif plant == 6:
				world.numof_radish += 1
				plantgrowing = false
				plant_grown = false
				$plant.play("no_plant")
			else:
				pass
		#print("number of carrots = " + str(world.numof_carrot))
		#print("number of spinaches = " + str(world.numof_spinach))
		#print("number of potato = " + str(world.numof_potato))
		#print("number of turnip = " + str(world.numof_turnip))
		#print("number of onion = " + str(world.numof_onion))
		#print("number of radish = " + str(world.numof_radish) + "\n")
