extends Sprite2D

# variables for clicks and total
var clickCount: float = 0.0
var totalClick: float = 10.0

#function to convert click amount to percentage
func toPercent(clicks: float) -> float:
	return (clicks / totalClick) * 100.0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# change sprite texture based on amount clicked
	match toPercent(clickCount):
		10.0:
			self.texture = ResourceLoader.load("res://planten/fase_2.png")
		30.0:
			self.texture = ResourceLoader.load("res://planten/fase_3.png")
		60.0:
			self.texture = ResourceLoader.load("res://planten/fase_4.png")
		100.0:
			self.texture = ResourceLoader.load("res://planten/fase_5.png")

func _input(event):
	#check for right mouse click event
	if event is InputEventMouseButton and event.is_pressed() and event.button_index == MOUSE_BUTTON_LEFT:
		if get_rect().has_point(to_local(event.position)):
				# add 1 to clickCount & change progress bar
				clickCount += 1.0
				$plant_bar.value = toPercent(clickCount)
				print("click count:", clickCount)
				# check if the plant is fully grown
				if clickCount >= totalClick:
					$plant_bar.visible = false
					$Plant_Label.text = "done"
					$NextButton.visible = true
					
