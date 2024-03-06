extends HBoxContainer

@onready var c = $Combatant


func get_init():
	return $Combatant.get_init()

func serialize():
	return "%d|%s|%d|%d" % [
		c.get_init(),
		c.get_name_(),
		c.get_health(),
		c.get_max_health()
	]

func deserialize(data: String):
	var bits = data.split('|')
	c.set_init(bits[0])
	c.set_name_(bits[1])
	c.set_health(bits[2])
	c.set_max_health(bits[3])

func _on_kablooey_pressed():
	queue_free()
