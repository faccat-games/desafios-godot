extends Node2D

var player1Score: int = 0
var player2Score: int = 0



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _restartPosition():
	$Bola.global_position = Vector2(
		get_viewport().size.x / 2,
		get_viewport().size.y / 2
	)
