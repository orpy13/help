extends CharacterBody2D

class_name AIagent

var is_idle = true
var is_move = false
var is_working = false

var work_target
var MAX_SPEED = 100
var position_global
var _velocity
var job_queue
const distance_threshold: = 3.0

var target_node
var target_node_temp
var self_node

@export var cargo_store: CargoStore
var max_cargo = 2
var cur_cargo = 0
signal clicked

# Called when the node enters the scene tree for the first time.
func _ready():
	self_node = self
	_velocity = Vector2.ZERO
	position_global = global_position
	pass # Replace with function body.

func _loading():
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if work_target != null:
		var to_target: = global_position.distance_to(work_target)
	
		if to_target < distance_threshold:
			
			return
		_velocity = Steering.arrive_to(_velocity, position_global, work_target)
		velocity = _velocity
		move_and_slide()
		
			
	




