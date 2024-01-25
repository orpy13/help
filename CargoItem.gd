extends Resource

class_name CargoItem


var cargo_type: String
var cargo_mass_ton: int
var cargo_value: int
var cargo_sprite: Texture2D

func _init(carg_typ = "default", carg_mas_tn = 100, carg_val = 100):
	cargo_type = carg_typ
	cargo_mass_ton = carg_mas_tn
	cargo_value = carg_val	
