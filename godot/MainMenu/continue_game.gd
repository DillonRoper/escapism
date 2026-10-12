extends Button

var target_scene
var most_recent_save

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	target_scene = preload("res://gameplay.tscn")
	var most_recent_save = _get_recent_save()
	pressed.connect(_button_pressed)
	return

# Note:                                                                       #
# The save_files.csv file (that stores data on all save files)                #
# should be organized as: file_name,size,datetime                             #

# Get the most recent save file from "save_files.csv"
#
# @return: An empty string if no saves exist, the path to the
# most recent save file otherwise
func _get_recent_save() -> String:
	var save_files = FileAccess.open("user://save_files.csv", FileAccess.WRITE)
	if (save_files == null):
		var error_msg = "FileAccess.open failed: "
		error_msg += error_string(FileAccess.get_open_error())
		push_error(error_msg)
		return ""
	var most_recent_datetime = -1
	var output = ""
	while (!save_files.eof_reached()):
		var line_arr = save_files.get_csv_line(",")
		var file = FileAccess.open(line_arr[0], FileAccess.READ)
		if (file == null):
			var error_msg = "FileAccess.open failed: "
			error_msg += error_string(FileAccess.get_open_error())
			push_error(error_msg)
			return ""
	return output

func _button_pressed() -> void:
	get_tree().change_scene_to_packed(target_scene)
	pass
