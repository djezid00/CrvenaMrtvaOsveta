//damage setup 
get_damaged_create(15)
//variables for movement
moveDir = 0;
moveSpd=2;
xspd=0;
yspd=0;

//sprite control 
centerYoffset =1;

weaponOffSetDist = 3;
aimDir =0;
face =3;
sprite[0] = sPlayerRight;
sprite[1] = sPlayerUp;
sprite[2] = sPlayerLeft;
sprite[3] = sPlayerDown;

//weapon info 
shootTimer =0;

//adding weapons to the weapon inv
array_push(global.PlayerWeapons,global.WeaponList.Colt_Single_Action_Army);
array_push(global.PlayerWeapons,global.WeaponList.Smith_Wesson_Model_3);
array_push(global.PlayerWeapons,global.WeaponList.Shotgun);

selectedWeapon = 2;
weapon = global.PlayerWeapons[selectedWeapon];

//sound for shooting
soundStage = 0;      // Current stage of sound sequence
soundTimer = 0;      // Timer to delay between sounds