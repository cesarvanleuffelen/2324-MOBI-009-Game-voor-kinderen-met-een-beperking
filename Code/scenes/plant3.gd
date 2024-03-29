extends Sprite2D
# variables for clicks and total
var clickCount: float = 0.0

#function to convert click amount to percentage
func toPercent(clicks: float) -> float:
	return (clicks / Global.totalClick) * 100.0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.part == 3:
		if Input.is_action_just_pressed("ui_select"):
			clickCount += 1
			$plant_bar.value = toPercent(clickCount)
			if clickCount >= Global.totalClick:
						$plant_bar.visible = false
						$Plant_Label.visible = true
						$Plant_Label.text = "Klaar!"
						Global.spaceDone = true
						clickCount = 200.0
					
	if toPercent(clickCount) >= 10.0 && toPercent(clickCount) <= 30.0:
		self.texture = ResourceLoader.load("res://planten/part3/fase_2.png")
	elif toPercent(clickCount) >= 30.0 && toPercent(clickCount) <= 60.0:
		self.texture = ResourceLoader.load("res://planten/part3/fase_3.png")
	elif toPercent(clickCount) >= 60.0 && toPercent(clickCount) < 100.0:
		self.texture = ResourceLoader.load("res://planten/part3/fase_4.png")
	elif toPercent(clickCount) >= 100.0:
		self.texture = ResourceLoader.load("res://planten/part3/fase_5.png")

func _input(event):
	#check for right mouse click event
	if event is InputEventMouseButton and event.is_pressed() and event.button_index == MOUSE_BUTTON_LEFT:
		if get_rect().has_point(to_local(event.position)):
				# add 1 to clickCount & change progress bar
				clickCount += 1.0
				$plant_bar.value = toPercent(clickCount)
				print(toPercent(clickCount))
				# check if the plant is fully grown
				if clickCount >= Global.totalClick:
					$plant_bar.visible = false
					$Plant_Label.visible = true
					$Plant_Label.text = "Klaar!"
					Global.done = true
					clickCount = 200.0
