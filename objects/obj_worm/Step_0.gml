switch(state){
	case "PATROL":
	// controlar dirección del sprite
	if (speed != 0)
	{
		if (hspeed > 0){
			image_xscale = size
		}
		else if (hspeed < 0){
			image_xscale = -size
		}
	}
	
var _previous_mask = mask_index;
mask_index = -1; 

// Buscamos cualquier gusano dentro del radio de detección
var _enemy = collision_circle(x, y, detection_range, obj_worm, false, true);

// Restauramos la máscara de colisión
mask_index = _previous_mask;

// Si encontró a otro gusano
if (_enemy != noone) {
    set_combat(_enemy)
	_enemy.set_combat(id)
}
}