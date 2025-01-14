extends CharacterBody2D


const SPEED := 10.0

func _ready() -> void:
	velocity = Vector2(-SPEED,0)

func _physics_process(delta:float)-> void:
	var col:KinematicCollision2D= move_and_collide(velocity)
	if col:
		var normal :=col.get_normal()
		velocity = velocity.bounce(normal)


func _on_area_2d_body_entered(body):
	
	if(body.name == "GolPlayer1"):
		$"..".player2Score+=1
		$"../scorePlayer2".text= str( $"..".player2Score)
		$".."._restartPosition()
	if(body.name == "GolPlayer2"):
		$"..".player1Score+=1
		$"../scorePlayer1".text= str($"..".player1Score)
		$".."._restartPosition()
