extends CharacterBody2D

var myTime : float

func _physics_process(delta):
	myTime =  myTime + delta
	if myTime < 2:
		move_and_collide(Vector2(1,0))
		$AnimatedSprite2D.play("walk_right")
	if myTime >= 2:
		move_and_collide(Vector2(-1,0))
		$AnimatedSprite2D.play("walk_left")
	if myTime >= 4:
		myTime = 0

