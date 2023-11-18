extends CharacterBody2D

@export var speed : float  # How fast the player moves
@onready var actionable_finder: Area2D = $direction/Actionablefinder
@onready var cameraNode : Camera2D = get_node("Camera2D")
var screen_size
var Cvelocity

func _ready():
	screen_size = get_viewport_rect().size
	
func _process(delta):
	cameraNode.position = position * delta

func _physics_process(delta):
	Cvelocity = 0
	if Input.is_action_pressed("move_right"):
		move_and_collide(Vector2(speed,0))
		$AnimatedSprite2D.play("walkright")
		Cvelocity += 1
		
	if Input.is_action_pressed("move_left"):
		move_and_collide(Vector2(-speed,0))
		$AnimatedSprite2D.play("walkleft")
		Cvelocity += 1
		
	if Input.is_action_pressed("move_up"):
		move_and_collide(Vector2(0,-speed))
		$AnimatedSprite2D.play("walkup")
		Cvelocity += 1
		
	if Input.is_action_pressed("move_down"):
		move_and_collide(Vector2(0,speed))
		$AnimatedSprite2D.play("walkdown")
		Cvelocity += 1
		
	if Cvelocity == 0:
		$AnimatedSprite2D.play("idle")
	
	if Input.is_action_just_pressed("ui_accept"):
		var actionables = actionable_finder.get_overlapping_areas()
		if actionables.size() > 0:
			actionables[0].action()
			return
