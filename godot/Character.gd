extends KinematicBody2D


# Declare member variables here. Examples:
export var move_speed = 200
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var x = 0
	var y = 0
	if (Input.is_action_pressed("ui_left")):
		x = - 1
	if (Input.is_action_pressed("ui_right")):
		x = 1
	if (Input.is_action_pressed("ui_accept")):
		y = - 1
	
	translate(Vector2(x * delta * move_speed, y * delta * move_speed))	
	
