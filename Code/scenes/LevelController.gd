extends Panel

var b2:bool = true
var b3:bool = true
var b4:bool = true
var b5:bool = true
var b6:bool = true
var b7:bool = true
var b8:bool = true
var b9:bool = true
var b10:bool = true
var b11:bool = true

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
			6:
				_on_new_button_6_pressed()
			7:
				_on_new_button_7_pressed()
			8:
				_on_new_button_8_pressed()
			9:
				_on_new_button_9_pressed()
			10:
				_on_new_button_10_pressed()
			11:
				_on_new_button_11_pressed()

	if Global.done == true:
		if b2:
			$Plant_2/newButton2.visible = true
		if b3:
			$Plant_3/newButton3.visible = true
		if b4:
			$Plant_4/newButton4.visible = true
		if b5:
			$Plant_5/newButton5.visible = true
		if b6:
			$Plant_6/newButton6.visible = true
		if b7:
			$Plant_7/newButton7.visible = true
		if b8:
			$Plant_8/newButton8.visible = true
		if b9:
			$Plant_9/newButton9.visible = true
		if b10:
			$Plant_10/newButton10.visible = true
		if b11:
			$Plant_11/newButton11.visible = true
			
	if Global.spaceCount > 11 :
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
	$Plant_6/newButton6.visible = false
	$Plant_7/newButton7.visible = false
	$Plant_8/newButton8.visible = false
	$Plant_9/newButton9.visible = false
	$Plant_10/newButton10.visible = false
	$Plant_11/newButton11.visible = false
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
	$Plant_6/newButton6.visible = false
	$Plant_7/newButton7.visible = false
	$Plant_8/newButton8.visible = false
	$Plant_9/newButton9.visible = false
	$Plant_10/newButton10.visible = false
	$Plant_11/newButton11.visible = false
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
	$Plant_6/newButton6.visible = false
	$Plant_7/newButton7.visible = false
	$Plant_8/newButton8.visible = false
	$Plant_9/newButton9.visible = false
	$Plant_10/newButton10.visible = false
	$Plant_11/newButton11.visible = false
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
	$Plant_6/newButton6.visible = false
	$Plant_7/newButton7.visible = false
	$Plant_8/newButton8.visible = false
	$Plant_9/newButton9.visible = false
	$Plant_10/newButton10.visible = false
	$Plant_11/newButton11.visible = false
	b5 = false
	$Plant_5.texture = ResourceLoader.load("res://planten/part5/fase_1.png")
	$Plant_5/plant_bar.visible = true
	Global.totalClick += 2.0
	Global.spaceDone = false


func _on_new_button_6_pressed():
	Global.done = false
	Global.part = 6
	$Plant_2/newButton2.visible = false
	$Plant_3/newButton3.visible = false
	$Plant_4/newButton4.visible = false
	$Plant_5/newButton5.visible = false
	$Plant_6/newButton6.visible = false
	$Plant_7/newButton7.visible = false
	$Plant_8/newButton8.visible = false
	$Plant_9/newButton9.visible = false
	$Plant_10/newButton10.visible = false
	$Plant_11/newButton11.visible = false
	b6 = false
	$Plant_6.texture = ResourceLoader.load("res://planten/part6/fase_1.png")
	$Plant_6/plant_bar.visible = true
	Global.totalClick += 2.0
	Global.spaceDone = false

func _on_new_button_7_pressed():
	Global.done = false
	Global.part = 7
	$Plant_2/newButton2.visible = false
	$Plant_3/newButton3.visible = false
	$Plant_4/newButton4.visible = false
	$Plant_5/newButton5.visible = false
	$Plant_6/newButton6.visible = false
	$Plant_7/newButton7.visible = false
	$Plant_8/newButton8.visible = false
	$Plant_9/newButton9.visible = false
	$Plant_10/newButton10.visible = false
	$Plant_11/newButton11.visible = false
	b7 = false
	$Plant_7.texture = ResourceLoader.load("res://planten/part7/fase_1.png")
	$Plant_7/plant_bar.visible = true
	Global.totalClick += 2.0
	Global.spaceDone = false


func _on_new_button_8_pressed():
	Global.done = false
	Global.part = 8
	$Plant_2/newButton2.visible = false
	$Plant_3/newButton3.visible = false
	$Plant_4/newButton4.visible = false
	$Plant_5/newButton5.visible = false
	$Plant_6/newButton6.visible = false
	$Plant_7/newButton7.visible = false
	$Plant_8/newButton8.visible = false
	$Plant_9/newButton9.visible = false
	$Plant_10/newButton10.visible = false
	$Plant_11/newButton11.visible = false
	b8 = false
	$Plant_8.texture = ResourceLoader.load("res://planten/part8/fase_1.png")
	$Plant_8/plant_bar.visible = true
	Global.totalClick += 2.0
	Global.spaceDone = false


func _on_new_button_9_pressed():
	Global.done = false
	Global.part = 9
	$Plant_2/newButton2.visible = false
	$Plant_3/newButton3.visible = false
	$Plant_4/newButton4.visible = false
	$Plant_5/newButton5.visible = false
	$Plant_6/newButton6.visible = false
	$Plant_7/newButton7.visible = false
	$Plant_8/newButton8.visible = false
	$Plant_9/newButton9.visible = false
	$Plant_10/newButton10.visible = false
	$Plant_11/newButton11.visible = false
	b9 = false
	$Plant_9.texture = ResourceLoader.load("res://planten/part9/fase_1.png")
	$Plant_9/plant_bar.visible = true
	Global.totalClick += 2.0
	Global.spaceDone = false


func _on_new_button_10_pressed():
	Global.done = false
	Global.part = 10
	$Plant_2/newButton2.visible = false
	$Plant_3/newButton3.visible = false
	$Plant_4/newButton4.visible = false
	$Plant_5/newButton5.visible = false
	$Plant_6/newButton6.visible = false
	$Plant_7/newButton7.visible = false
	$Plant_8/newButton8.visible = false
	$Plant_9/newButton9.visible = false
	$Plant_10/newButton10.visible = false
	$Plant_11/newButton11.visible = false
	b10 = false
	$Plant_10.texture = ResourceLoader.load("res://planten/part10/fase_1.png")
	$Plant_10/plant_bar.visible = true
	Global.totalClick += 2.0
	Global.spaceDone = false


func _on_new_button_11_pressed():
	Global.done = false
	Global.part = 11
	$Plant_2/newButton2.visible = false
	$Plant_3/newButton3.visible = false
	$Plant_4/newButton4.visible = false
	$Plant_5/newButton5.visible = false
	$Plant_6/newButton6.visible = false
	$Plant_7/newButton7.visible = false
	$Plant_8/newButton8.visible = false
	$Plant_9/newButton9.visible = false
	$Plant_10/newButton10.visible = false
	$Plant_11/newButton11.visible = false
	b11 = false
	$Plant_11.texture = ResourceLoader.load("res://planten/part11/fase_1.png")
	$Plant_11/plant_bar.visible = true
	Global.totalClick += 2.0
	Global.spaceDone = false
