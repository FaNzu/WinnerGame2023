extends CharacterBody2D

var myTime : float
@export var speed : float
var reachedX : bool = false
var reachedX2 : bool = false
@onready var Actionablef : Area2D = $Actionable

func _process(delta):
	Actionablef.position = position * delta

func _physics_process(delta):
	myTime += delta
	if myTime < 5:
		if reachedX == false:
			move_and_collide(Vector2(speed,0))
			$AnimatedSprite2D.play("walk_right")
			if (position.x > 140):
				reachedX = true
				reachedX2 = false
		if reachedX2 == false:
			move_and_collide(Vector2(-speed,0))
			$AnimatedSprite2D.play("walk_left")
			if (position.x < 2):
				reachedX2 = true
				reachedX = false
	if myTime >= 5:
		$AnimatedSprite2D.stop()
	if myTime > 15:
		myTime = 0

