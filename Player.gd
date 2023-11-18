extends Area2D

@export var speed = 400   # How fast the player moves
var screen_size

func _ready():
	screen_size = get_viewport_rect().size
	
func _process(delta):
	pass
	# Check for input
	# Move in the given direction.
	# Play the appropriate animation.
