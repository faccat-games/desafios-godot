extends CharacterBody2D

const SPEED: = 200.00
@export var player_crontroller = 0

func getYDirection() -> float:
	if(player_crontroller==0 ):
		return Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	else:
		return Input.get_action_strength("player2_down") - Input.get_action_strength("player2_up")
func _physics_process(delta: float) -> void:
		var dir: Vector2=Vector2(0, getYDirection())
		velocity = dir * SPEED
		move_and_slide()
