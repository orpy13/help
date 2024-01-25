extends CharacterBody2D

@export var cargo_store: CargoStore

var engine_power = 385

var max_fuel = 200
var cur_fuel = 50
var fuel_rate = 0.005
var fuel_level

var steer_direction
var acceleration = Vector2.ZERO

var heading
var navigation_waypoints: Array



func _physics_process(delta):
	


