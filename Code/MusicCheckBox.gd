extends CheckBox

var music_bus = AudioServer.get_bus_index("music")


func _ready():
	if Global.mute:
		button_pressed = false
	else:
		button_pressed = true

func _on_toggled(toggled_on):
	AudioServer.set_bus_mute(music_bus, not AudioServer.is_bus_mute(music_bus))


func _on_pressed():
	if Global.mute:
		Global.mute = false
		AudioServer.set_bus_mute(music_bus, not AudioServer.is_bus_mute(music_bus))
	else:
		Global.mute = true
		AudioServer.set_bus_mute(music_bus, not AudioServer.is_bus_mute(music_bus))
