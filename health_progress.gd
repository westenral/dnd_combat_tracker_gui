extends ProgressBar

@export var watch: Range

func _ready():
	if watch:
		_on_health_changed()

func _on_health_changed(_p = 0):
	max_value = watch.max_value
	value = watch.value
	min_value = watch.min_value
