extends Area2D

class_name Area
@export var production_type: CargoItem
@export var cargo_store : CargoStore
@onready var job_location = global_position
@onready var timer = $Timer
var job_node: Node2D = self
var storage

func _ready():

	pass
	
func _produce_item():
	storage = cargo_store.cargo_store
	storage.push_front(production_type)
	storage.pop_back()
	print(cargo_store.cargo_store)
	pass
		
func _process(delta):
	pass

func _on_timer_timeout():
	#_produce_item()
	timer.wait_time = 2
	timer.start()
	pass


		
	pass # Replace with function body.
