extends Node2D

class_name MainGame

@onready var tilemap = $TileMap
@export var height = 200
@export var width = 600
@export var noise_texture = NoiseTexture2D
var select_dict
var selected_unit
var sel_unt_prev
signal new_selection(node)

func _selection_changed_signal():
	if selected_unit != sel_unt_prev:
		new_selection.emit(selected_unit)
		sel_unt_prev = selected_unit

func _unhandled_input(event):
	if event.is_action_pressed("left_click"):
		var space = get_world_2d().direct_space_state
		var query = PhysicsPointQueryParameters2D.new()
		query.collide_with_areas = true
		query.collide_with_bodies = true
		query.position = get_global_mouse_position()
		select_dict = space.intersect_point(query)
		if select_dict.is_empty() != true:
			selected_unit = select_dict[0].get("collider")
			print(selected_unit)
			_selection_changed_signal()
		else:
			selected_unit = null
			return

func _ready():
	pass
