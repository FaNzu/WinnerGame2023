extends CharacterBody2D

var myTime : float
@export var speed : float
var reachedX : bool = false
var reachedX2 : bool = false
@onready var Actionablef : Area2D = $Actionable
var walkingState : String = "LEFT"

func _process(delta):
	Actionablef.position = position * delta

func _physics_process(delta):
	if walkingState == "LEFT":
		move_and_collide(Vector2(speed,0))
		$AnimatedSprite2D.play("walk_right")
		if (position.x > 140):
			walkingState = "stoppingfirst"
	if walkingState == "stoppingfirst":
		myTime += delta
		$AnimatedSprite2D.play("idle")
		if (myTime > 20):
			walkingState = "RIGHT"
			myTime = 0
	if walkingState == "RIGHT":
		move_and_collide(Vector2(-speed,0))
		$AnimatedSprite2D.play("walk_left")
		if (position.x < -20):
			walkingState = "UP"
	if walkingState == "UP":
		move_and_collide(Vector2(0,-speed))
		$AnimatedSprite2D.play("walk_up")
		if (position.y < -42):
			walkingState = "LEFTagain"
	if walkingState == "LEFTagain":
		move_and_collide(Vector2(-speed,0))
		$AnimatedSprite2D.play("walk_left")
		if (position.x < -30):
			walkingState = "STOP"
	if walkingState == "STOP":
		$AnimatedSprite2D.stop()
		myTime += delta
		if myTime > 20:
			walkingState = "LEFTback"
			myTime = 0
	if walkingState == "LEFTback":
		move_and_collide(Vector2(speed,0))
		$AnimatedSprite2D.play("walk_left")
		if (position.x > -20):
			walkingState = "downBACK"
	if walkingState == "downBACK":
		move_and_collide(Vector2(0,speed))
		$AnimatedSprite2D.play(("walk_down"))
		if (position.y >= 0):
			walkingState = "LEFT"
