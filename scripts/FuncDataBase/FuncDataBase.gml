// Base de datos de los gusanos
function scr_Worms() {
	
	function create_worms(_id,_name,_life,_damage,_money,_cooldown) constructor {
		index = _id
		name = _name
		hp = _life
		damage = _damage
		money = _money
		cooldown = _cooldown
	}
	
	global.worms = {
		worm1: new create_worms(1,"Prueba",300,90,25,90),
	}
}

// Base de datos de los Tienda
function scr_Tienda() {
	
	function create_items (_id,_name,_desc,_effect) constructor {
		index = _id
		name = _name
		desc = _desc
		effect = _effect
	}
	
	global.items = {
		item1: new create_items(1,"Prueba","Este es un Test",function(){}),
	}
	
}