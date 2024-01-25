extends Control

var isOpen: bool = false
var selected : Node
@export var container: GridContainer
@onready var slots: Array = $NinePatchRect/GridContainer.get_children()
@export var main: Node
func _ready():
	
	main.new_selection.connect(_on_new_selection)
	visible = false
	pass

func _on_new_selection(node: Node):
	close()
	selected = node
	open()
	update()
	print(selected)

func open():
	visible = true
	isOpen = true
	
func close():
	visible = false
	isOpen = false
	

func _process(delta):
	pass
	
func update():
	var cargo: CargoStore = selected.cargo_store
	for i in range(min(cargo.cargo_store.size(), slots.size())):
		slots[i].update(cargo.cargo_store[i])
	

