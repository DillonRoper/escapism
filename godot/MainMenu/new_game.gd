extends Button

var target_scene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	target_scene = load("res://gameplay.tscn")
	pressed.connect(_button_pressed)
	return

# Note:                                                                       #
# The save_files.csv file (that stores data on all save files)                #
# should be organized as: file_name,size,datetime                             #

# Make a new save file and append it to "save_files.csv"
#
# @return: true if the creation was successful, false otherwise
func _create_new_save() -> bool:
	# Open the save_files.csv file w/ sanity check
	var save_files = FileAccess.open("user://save_files.csv", FileAccess.READ_WRITE)
	if (save_files == null):
		var error_msg = "FileAccess.open failed: "
		error_msg += error_string(FileAccess.get_open_error())
		push_error(error_msg)
		return false
	
	# Seek the eof and write the new save
	var most_recent_datetime = -1
	var output = ""
	while (!save_files.eof_reached()):
		var line = save_files.get_line()
		var line_array = line.split(",")
		break
	return output

func _button_pressed() -> void:
	get_tree().change_scene_to_packed(target_scene)
	pass
