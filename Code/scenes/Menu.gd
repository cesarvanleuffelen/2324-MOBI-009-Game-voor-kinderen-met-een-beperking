extends Panel

var music_bus = AudioServer.get_bus_index("music")

func _reset():
	Global.totalClick = 5.0
	Global.done = false
	Global.part = 1
	Global.spaceDone = false
	Global.spaceCount = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if !Global.background:
		$TextureRect.visible = false

func _on_mute_button_pressed():
	if Global.mute:
		Global.mute = false
		AudioServer.set_bus_mute(music_bus, not AudioServer.is_bus_mute(music_bus))
	else:
		Global.mute = true
		AudioServer.set_bus_mute(music_bus, not AudioServer.is_bus_mute(music_bus))


func _on_quit_button_pressed():
	Global.space_active = false
	_reset()
	get_tree().change_scene_to_file("res://main_menu.tscn")
