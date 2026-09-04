

// Salud
 hp_max = random_range(100,150);
 hp = hp_max;
  
 //Combate
 damage = random_range(30,60);
cooldown_attack = random_range(45, 90);
can_attack = true;

randomise()
//Aspecto

size = 1.0;
image_xscale = size
image_yscale = size

detection_range = 100;
actual_enemy = noone;
state = "PATROL"; //Estados "PATROL" Y "COMBAT"

change_heading = function() {
    direction = random_range(0, 360);
    
    // 30% chance to pause, 70% chance to move
    if (random(100) < 30) {
        speed = 0; 
    } else {
        speed = random_range(1, 2);
    }
    
    // Set timer for next direction change (between 1 and 5 seconds)
    alarm[0] = random_range(30, 60 * 5);
};

change_heading()

set_combat = function(enemy) {
	state = "COMBAT";
	speed = 0
	alarm_set(0, -1)
	actual_enemy = enemy
}

receive_damage = function(dmg) {
	hp -= dmg
	if (hp <= 0){
	 return true
	}
	show_debug_message("el gusano " + name + " recibio " + string(dmg) + " de daño")
	show_debug_message("Vida restante " + string(hp))
	return false
}

chase_enemy = function() {
    // Si el enemigo fue destruido o no existe, volver a patrullar
    if (!instance_exists(actual_enemy)) {
        actual_enemy = noone;
        state = "PATROL";
        change_heading(); // Reanuda la patrulla aleatoria
        exit;
    }

    // Orientar sprite según la posición del enemigo (Izquierda / Derecha)
    if (actual_enemy.x > x) {
        image_xscale = size;
    } else if (actual_enemy.x < x) {
        image_xscale = -size;
    }

    // Calcular la distancia con el enemigo
    var _dist = point_distance(x, y, actual_enemy.x, actual_enemy.y);
    var _attack_range = 64; // Distancia a la que se detienen para golpearse

    if (_dist > _attack_range) {
        // Si está lejos, se mueve hacia él
        direction = point_direction(x, y, actual_enemy.x, actual_enemy.y);
        speed = 2; // Velocidad de persecución
    } else {
        // Si ya llegó al rango de ataque, se detiene
        speed = 0;
		if (can_attack){
			win = actual_enemy.receive_damage(damage)
			can_attack = false
			alarm_set(1, cooldown_attack)
			
			if (win) {
				instance_destroy(actual_enemy)
			}
		}
    }
};

show_debug_message(name)