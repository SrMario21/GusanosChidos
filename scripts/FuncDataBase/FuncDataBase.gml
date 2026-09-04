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
		worm0: new create_worms(1,"Prueba",300,90,25,90),
	}
}

// Base de datos de los Tienda
function scr_Tienda() {
	
	function create_items (_id,_name,_desc,_spr,_effect) constructor {
		index = _id
		name = _name
		desc = _desc
		sprite = _spr
		effect = _effect
	}
	
	global.items = {
		item0: new create_items(1,"Prueba","Este es un Test",spr_Basiga,function(){
			show_debug_message("Se presiono")
		}),
	}
	
}

function scr_get_item(_id,_x,_y) {
	var _item = instance_create_depth(_x,_y,-9999,obj_ParentItem) //Crea el item 
	with (_item) { //Mientras se crea el item hace esto:
		item = variable_clone(variable_struct_get(global.items,"item" + string(_id))) 
		sprite_index = item.sprite
		//Da la informacion del item y el sprite
	}
}