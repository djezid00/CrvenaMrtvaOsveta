//drawing the weapon
function draw_my_weapon ()
{
	var _weaponYscl  =1;

var _xOffset = lengthdir_x(weaponOffSetDist, aimDir);
var _yOffset = lengthdir_y(weaponOffSetDist, aimDir);

//flipping the weapon on y axis
if aimDir > 90 && aimDir < 270
{
	_weaponYscl = -1;
}
	
draw_sprite_ext(weapon.sprite,0,x + _xOffset,centerY + _yOffset,1,_weaponYscl,aimDir,c_white,1);
}

//damage calculation 
	//damage create event
function get_damaged_create(_hp =10){
	hp =_hp;
	damageList = ds_list_create()

}
	
	//damage cleanup event
function get_damage_cleanup(){
	ds_list_destroy(damageList);

}

function get_damaged(_damagedObj){
	
// Receive damage
if (place_meeting(x, y, _damagedObj)) {
    // Create a list of damage instances
    var _instList = ds_list_create();
    instance_place_list(x, y, _damagedObj, _instList, false);

    // Iterate through the instances
    for (var i = 0; i < ds_list_size(_instList); i++) {
        var _inst = ds_list_find_value(_instList, i);
        
        // Check if this instance is already in the damage list
        if (ds_list_find_index(damageList, _inst) == -1) {
            // Add the new damage instance to the damage list
            ds_list_add(damageList, _inst);
            // Take damage
            hp -= _inst.damage;
            // Mark the damage instance as processed (optional)
             _inst.hitConfirm = true;
        }
    }

    // Free memory
    ds_list_destroy(_instList);
}

// Clear the damage list of objects that no longer exist or aren't touching anymore
var _damageListSize = ds_list_size(damageList);
for (var i = 0; i < _damageListSize; i++) {
    var _inst = ds_list_find_value(damageList, i);
    // If not touching or instance no longer exists, remove it
    if (!instance_exists(_inst) || !place_meeting(x, y, _inst)) {
        ds_list_delete(damageList, i);
        i--;
        _damageListSize--;
    }
}

// Handle death
if (hp <= 0) {
    instance_destroy();
}




}