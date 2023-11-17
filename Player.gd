extends Area2D

@export var speed = 400   # How fast the player moves
var screen_size

func _ready():
	screen_size = get_viewport_rect().size
	
func _process(delta):
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("move_right"):
		velocity.x += 1
		$AnimatedSprite2D.play("walkright")
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1
		$AnimatedSprite2D.play("walkleft")
	if Input.is_action_pressed("move_up"):
		velocity.y += 1
		$AnimatedSprite2D.play("walkup")
	if Input.is_action_pressed("move_down"):
		velocity.y -= 1
		$AnimatedSprite2D.play("walkdown")
	
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
	else:
		$AnimatedSprite2D.play("idle")
	
	pass
	# Check for input
	# Move in the given direction.
	# Play the appropriate animation.
