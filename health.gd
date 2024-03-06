extends SpinBox

@export var max_health: SpinBox

func _on_spin_box_value_changed(value):
	max_value = value
	changed

