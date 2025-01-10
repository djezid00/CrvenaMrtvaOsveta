//constructor for weapons

function create_weapon (_sprite =sGun , _weaponLength,_bulletObj, _cooldown = 10, _bulletNum =1, _spread =0,_pickupSprite  ) constructor
{
	sprite = _sprite;
	length = _weaponLength;
	bulletObj = _bulletObj;
	cooldown = _cooldown;
	
	bulletNum=_bulletNum;
	spread = _spread;
	pickupSprite = _pickupSprite;
	
}


//weapon inventory of player
global.PlayerWeapons =array_create(0);

//weapons  

global.WeaponList = {
	
	Colt_Single_Action_Army : new create_weapon(
	sColt_Single_Action_Army,
	sprite_get_bbox_right(sColt_Single_Action_Army)- sprite_get_xoffset(sColt_Single_Action_Army),
	oBullet_Colt1,
	20
),
Smith_Wesson_Model_3 :new create_weapon(
	sSmith_Wesson_Model_3,
	sprite_get_bbox_right(sSmith_Wesson_Model_3)- sprite_get_xoffset(sSmith_Wesson_Model_3),
	oBullet_SW2,
	15
),
Shotgun : new create_weapon(
	sShotgun,
	sprite_get_bbox_right(sShotgun)- sprite_get_xoffset(sShotgun),
	oBulletShotgun,
	65,
	7,
	45,
	sShotgun
),
Winchester : new create_weapon(
	sWinchester,
	sprite_get_bbox_right(sWinchester)- sprite_get_xoffset(sWinchester),
	oBullet_Winchester,
	47,
	1,
	0,
	sWinchester
),
SawedShotgun : new create_weapon(
	sSawedOffShotgun,
	sprite_get_bbox_right(sSawedOffShotgun)- sprite_get_xoffset(sSawedOffShotgun),
	oBulletShotgun,
	65,
	7,
	45,
	sSawedOffShotgun
)
}





