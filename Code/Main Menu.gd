extends Control




func _on_play_pressed():
	get_tree().change_scene_to_file("res://scenes/game.tscn")


func _on_setting_pressed():
	get_tree().change_scene_to_file("res://settings_menu.tscn")
