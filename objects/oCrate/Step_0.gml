get_damaged(oDamageParent);

var _chance = irandom(100);

if hp <=0 {
	instance_destroy()
	if _chance < 20
		var _inst = instance_create_depth(x, y ,depth-1, oWeaponPickup);
	}

