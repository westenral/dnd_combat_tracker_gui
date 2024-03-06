extends VBoxContainer


func serialize():
	var data: String
	for child in get_children():
		data += child.serialize() + '\n'
	return data

func deserialize(data: String):
	var wow = preload("res://combatant_context.tscn")
	for line in data.split('\n', false):
		var brutha = wow.instantiate()
		add_child(brutha)
		
		brutha.deserialize(line)

func _on_sort_pressed():
	var nodes = get_children()
	nodes.sort_custom(func (a, b):
		return a.get_init() > b.get_init()
	)
	for child in get_children():
		remove_child(child)
	for node in nodes:
		add_child(node)


func _on_basinga_pressed():
	var heheheha = preload("res://combatant_context.tscn").instantiate()
	add_child(heheheha)
