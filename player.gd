extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var turn_speed = 3.0  # Adjust this value to control turning speed


func _physics_process(delta):
	rotate(get_angle_to(get_global_mouse_position()))
	
	if Input.is_action_pressed("left"):
		position.x -= 1 * SPEED * delta
	if Input.is_action_pressed("right"):
		position.x += 1 * SPEED * delta
	if Input.is_action_pressed("up"):
		position.y -= 1 * SPEED * delta
	if Input.is_action_pressed("down"):
		position.y += 1 * SPEED * delta
	if Input.is_action_pressed("attack"):
		var cur_pos = $Hand.position
		print(cur_pos)
