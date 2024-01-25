#CURRENTLY UNUSED

extends CharacterBody2D

@onready var target: = get_node(target_path)

const distance_threshold: = 3.0
const slow_radius: = 5.0

@export var max_speed: = 400
@export var target_path: = NodePath()
@export var follow_offset: = 50.0
#@export var look_offset: = 50.0

var _velocity: = Vector2.ZERO

func _physics_process(delta):
	if target == self:
		set_physics_process(false)
	
	var target_global_position: Vector2 = target.global_position
	
	var to_target: = global_position.distance_to(target_global_position)
	
	if to_target < distance_threshold:
		return
		
	var target_hitch_point: Vector2 = (target_global_position - (target_global_position - 
	global_position).normalized() * follow_offset
	if to_target > follow_offset
	else global_position
	)
#	var target_look_point: Vector2 = target_global_position - (target_global_position - 
#	global_position).normalized() * look_offset
	
	_velocity = Steering.arrive_to(
		_velocity,
		global_position,
		target_hitch_point,
		max_speed,
		slow_radius,
		10
	)
	velocity = _velocity
	rotation = _velocity.angle()
	move_and_slide()
	
	
	

