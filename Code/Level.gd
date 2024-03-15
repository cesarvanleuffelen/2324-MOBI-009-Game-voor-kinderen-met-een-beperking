extends Node2D

var next_scene: String;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	match Global.scene_count:
		1:
			next_scene = "res://scenes/game_2.tscn"
		2:
			next_scene = "res://scenes/game_3.tscn"
		3:
			next_scene = "res://scenes/game_4.tscn"
		4:
			next_scene = "res://scenes/game_5.tscn"


func _on_next_button_pressed() -> void:
	get_tree().change_scene_to_file(next_scene)
	Global.scene_count += 1
	Global.totalClick += 2
	print(Global.scene_count)
	
