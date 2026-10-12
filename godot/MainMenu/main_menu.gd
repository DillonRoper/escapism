extends Control

#
func _ready() -> void:
	var save_files
	if (!FileAccess.file_exists("user://save_files.dat")):
		save_files = FileAccess.open("user://save_files.dat", FileAccess.WRITE)
	else:
		save_files = FileAccess.open("user://save_files.dat", 
									 FileAccess.READ_WRITE)
		save_files.seek_end()
	return
