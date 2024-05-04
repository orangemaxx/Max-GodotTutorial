extends Node

@onready var score_label = $ScoreLabel

var score = 0

func _ready():
	var sucsess = ProjectSettings.load_resource_pack("res://dlc.pck")
	
	if sucsess:
		get_tree().change_scene_to_file("res://scenes/maxdlc/dlc.tscn")


func add_point():
	score += 1
	score_label.text = "You've collected " + str(score) + " coins!"
