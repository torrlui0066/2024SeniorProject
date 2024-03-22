extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$anim.play("Active")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_body_entered(body):
	if body.name == "player":
		$anim.play("Destroyed")
		player_data.coin += 1
		player_data.life -= 1
		print("Amount of coin collected ", player_data.coin)
		await  $anim.animation_finished
		queue_free()
