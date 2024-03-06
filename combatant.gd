extends HBoxContainer

func get_init():
	return $Init.value

func get_name_():
	return $name.text

func get_health():
	return $health.value

func get_max_health():
	return $health.max_value

func set_init(data):
	$Init.value = int(data)

func set_name_(data):
	$name.text = String(data)

func set_health(data):
	$health.value = int(data)

func set_max_health(data):
	$health.max_value = int(data)
