extends Area3D

func _ready() -> void:
	body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node) -> void:
	if body.name == "Player":
		print("player in zone")
		get_tree().change_scene_to_file("res://WinScreen.tscn")
