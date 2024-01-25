extends Panel

@onready var background_sprite = $BackGround
@onready var item_sprite = $CenterContainer/Panel/Item
@onready var mass_label = $CenterContainer2/Panel/RichTextLabel

func update(item : CargoItem):
	if !item:
		item_sprite.visible = false
	else :
		item_sprite.visible = true
		item_sprite.texture = item.cargo_sprite
		mass_label.text = str(item.cargo_mass_ton)
