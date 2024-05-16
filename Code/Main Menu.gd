extends Control

func _ready():
	set_process_input(true)

func _input(event):
	if event is InputEventKey and event.pressed:
		if event.keycode == KEY_SPACE:
			Global.space_active = true
			get_tree().change_scene_to_file("res://scenes/game.tscn")

func _on_play_pressed():
	get_tree().change_scene_to_file("res://scenes/game.tscn")


func _on_setting_pressed():
	get_tree().change_scene_to_file("res://scenes/settings_menu.tscn")
