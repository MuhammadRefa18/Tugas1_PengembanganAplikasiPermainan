extends CharacterBody2D

var SPEED = 200
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	#movement()
	movement_diag()
	move_and_slide()
	
func movement():
	if Input.get_action_strength("move_down") :
		position.y += SPEED
	elif Input.get_action_strength("move_up") :
		position.y += SPEED
	elif Input.get_action_strength("move_right") :
		position.x += SPEED
	elif Input.get_action_strength("move_left") :
		position.x += SPEED
	
func movement_diag():
	var x_move = Input.get_action_strength("right") - Input.get_action_strength("left")
	var y_move = Input.get_action_strength("down") - Input.get_action_strength("up")
	velocity = Vector2(x_move, y_move) * SPEED
	return velocity
