extends CheckBox


# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.background:
		button_pressed = true
	else:
		button_pressed = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	if Global.background:
		Global.background = false
	else:
		Global.background = true
