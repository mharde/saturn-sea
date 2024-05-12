extends CharacterBody2D


const SPEED = 120.0
const JUMP_VELOCITY = -100.0

# Set gravity.
@export var gravity = 200
@export var climbing = false
@onready var animated_sprite = $AnimatedSprite2D

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
	#Define climbing mechanics.
	if climbing == false:
		velocity.y += gravity
	if climbing == true:
		velocity.y = 0
		if Input.is_action_pressed("move_up"):
			velocity.y = -SPEED
				
		elif Input.is_action_pressed("move_down"):
				velocity.y = SPEED
				

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	var direction = Input.get_axis("move_left", "move_right")
	
	#Flip the Sprite
	if direction > 0:
		animated_sprite.flip_h = false
	if direction < 0:
		animated_sprite.flip_h = true
	
	#Apply movement
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	move_and_slide()


	

