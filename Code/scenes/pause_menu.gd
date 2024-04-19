extends Control

func resume():
	get_tree().paused = false
	$AnimationPlayer.play("RESET")
	
func pause():
	get_tree().paused = true
	$AnimationPlayer.play("blur")

func esc():
	if Input.is_action_just_pressed("esc") and !get_tree().paused:
		pause()
	elif Input.is_action_just_pressed("esc") and get_tree().paused:
		resume()


func _on_terug_pressed():
	resume()

func _on_verlaten_pressed():
	get_tree().change_scene_to_file("res://main_menu.tscn")

func _process(delta):
	esc()


func _on_button_pressed():
	pause()
