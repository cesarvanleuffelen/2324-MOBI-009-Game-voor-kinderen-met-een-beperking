extends Panel


func _reset():
	Global.totalClick = 5.0
	Global.done = false
	Global.part = 1
	Global.spaceDone = false
	Global.spaceCount = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	if !Global.background:
		$TextureRect.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pause_button_pressed():
	$ColorRect.visible = true
	$VBoxContainer.visible = true


func _on_hervat_pressed():
	$ColorRect.visible = false
	$VBoxContainer.visible = false


func _on_stop_pressed():
	_reset()
	get_tree().change_scene_to_file("res://main_menu.tscn")


func _on_instellingen_pressed():
	get_tree().change_scene_to_file("res://scenes/settings_menu_ingame.tscn")
