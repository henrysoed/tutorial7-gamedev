extends Area3D

@export var sceneName := "level_1"
@export var sceneWin := "WinScreen"

func _on_body_entered(body: Node3D) -> void:
	if body.get_name() == "Player":
		if self.name == "WinArea":
			get_tree().change_scene_to_file(str("res://scenes/" + sceneWin + ".tscn"))
		if self.name == "SwitchLevel1":
			get_tree().change_scene_to_file(str("res://scenes/" + sceneName + ".tscn"))
		if self.name == "LoseArea":
			get_tree().change_scene_to_file("res://scenes/level_1.tscn")
