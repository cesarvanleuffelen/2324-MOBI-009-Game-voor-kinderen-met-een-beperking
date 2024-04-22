extends Panel

var b2:bool = true
var b3:bool = true
var b4:bool = true
var b5:bool = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
		

func _reset():
	Global.totalClick = 5.0
	Global.done = false
	Global.part = 1
	Global.spaceDone = false
	$ColorRect.visible = false
	Global.spaceCount = 1
	



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.spaceDone:
		match Global.spaceCount:
			2:
				_on_new_button_2_pressed()
			3:
				_on_new_button_3_pressed()
			4:
				_on_new_button_4_pressed()
			5:
				_on_new_button_5_pressed()

	if Global.done == true:
		if b2:
			$Plant_2/newButton2.visible = true
		if b3:
			$Plant_3/newButton3.visible = true
		if b4:
			$Plant_4/newButton4.visible = true
		if b5:
			$Plant_5/newButton5.visible = true
			
	if Global.spaceCount > 5 :
		$ColorRect.visible = true
		await get_tree().create_timer(5).timeout
		_reset()
		get_tree().change_scene_to_file("res://main_menu.tscn")


func _on_new_button_2_pressed():
	Global.done = false
	Global.part = 2
	$Plant_2/newButton2.visible = false
	$Plant_3/newButton3.visible = false
	$Plant_4/newButton4.visible = false
	$Plant_5/newButton5.visible = false
	b2 = false
	$Plant_2.texture = ResourceLoader.load("res://planten/part2/fase_1.png")
	$Plant_2/plant_bar.visible = true
	Global.totalClick += 2.0
	Global.spaceDone = false


func _on_new_button_3_pressed():
	Global.done = false
	Global.part = 3
	$Plant_2/newButton2.visible = false
	$Plant_3/newButton3.visible = false
	$Plant_4/newButton4.visible = false
	$Plant_5/newButton5.visible = false
	b3 = false
	$Plant_3.texture = ResourceLoader.load("res://planten/part3/fase_1.png")
	$Plant_3/plant_bar.visible = true
	Global.totalClick += 2.0
	Global.spaceDone = false


func _on_new_button_4_pressed():
	Global.done = false
	Global.part = 4
	$Plant_2/newButton2.visible = false
	$Plant_3/newButton3.visible = false
	$Plant_4/newButton4.visible = false
	$Plant_5/newButton5.visible = false
	b4 = false
	$Plant_4.texture = ResourceLoader.load("res://planten/part4/fase_1.png")
	$Plant_4/plant_bar.visible = true
	Global.totalClick += 2.0
	Global.spaceDone = false


func _on_new_button_5_pressed():
	Global.done = false
	Global.part = 5
	$Plant_2/newButton2.visible = false
	$Plant_3/newButton3.visible = false
	$Plant_4/newButton4.visible = false
	$Plant_5/newButton5.visible = false
	b5 = false
	$Plant_5.texture = ResourceLoader.load("res://planten/part5/fase_1.png")
	$Plant_5/plant_bar.visible = true
	Global.totalClick += 2.0
	Global.spaceDone = false
