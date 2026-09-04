// Salud
 hp_max = 100;
 hp = hp_max;
 
 //Combate
 damage = 25;
cooldown_attack = 90;
can_attack = false;

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