extends Node2D

var next_scene = "res://game_2.tscn"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_next_button_pressed() -> void:
	get_tree().change_scene_to_file(next_scene)
