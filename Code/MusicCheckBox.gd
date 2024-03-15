extends CheckBox

var music_bus = AudioServer.get_bus_index("music")



func _on_toggled(toggled_on):
	AudioServer.set_bus_mute(music_bus, not AudioServer.is_bus_mute(music_bus))
