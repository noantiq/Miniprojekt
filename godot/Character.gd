extends KinematicBody2D


# Declare member variables here. Examples:
export var WALK_SPEED = 200
var velocity = Vector2()


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	var motion = velocity * delta
	if Input.is_action_pressed("ui_left"):
		velocity.x = - WALK_SPEED
	elif Input.is_action_pressed("ui_right"):
		velocity.x =  WALK_SPEED
	else:
		velocity.x = 0

	move_and_slide(velocity, Vector2(0, -1))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
