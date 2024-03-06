extends HBoxContainer

@export var dudes: Control
@export var dialog: FileDialog

func _on_jesus_pressed():
	dialog.file_mode = FileDialog.FILE_MODE_SAVE_FILE
	dialog.show()


func _on_not_jesus_pressed():
	dialog.file_mode = FileDialog.FILE_MODE_OPEN_FILE
	dialog.show()


func _on_file_dialog_file_selected(path: String):
	$roadtogalilee.text = '/'.join(path.split("/").slice(3))
	match dialog.file_mode:
		FileDialog.FILE_MODE_SAVE_FILE:
			var data = dudes.serialize()
			var haha = FileAccess.open(path, FileAccess.WRITE)
			haha.store_string(data)
		FileDialog.FILE_MODE_OPEN_FILE:
			var data = FileAccess.get_file_as_string(path)
			dudes.deserialize(data)
