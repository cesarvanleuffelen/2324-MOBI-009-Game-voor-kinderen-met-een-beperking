extends Button

var scene_to_load  = "res://game_2.tscn"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _on_button_pressed():
	get_tree().change_scene_to_file(scene_to_load)
