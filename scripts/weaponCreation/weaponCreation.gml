//constructor for weapons

function create_weapon (_sprite =sGun , _weaponLength,_bulletObj, _reloadTime = 60, _cooldown = 10, _totalAmmo = 20, _magazineAmmo = 5, _currentMagazineAmmo = 5, _bulletNum =1, _spread =0,_pickupSprite  ) constructor
{
	sprite = _sprite;
	length = _weaponLength;
	bulletObj = _bulletObj;
	reloadTime = _reloadTime;
	cooldown = _cooldown;
	totalAmmo = _totalAmmo;
	magazineAmmo = _magazineAmmo
	currentMagazineAmmo = _currentMagazineAmmo;
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
	40,
	20,
	180,
	6,
	6,
),
Smith_Wesson_Model_3 :new create_weapon(
	sSmith_Wesson_Model_3,
	sprite_get_bbox_right(sSmith_Wesson_Model_3)- sprite_get_xoffset(sSmith_Wesson_Model_3),
	oBullet_SW2,
	40,
	15,
	180,
	6,
	6
),
Shotgun : new create_weapon(
	sShotgun,
	sprite_get_bbox_right(sShotgun)- sprite_get_xoffset(sShotgun),
	oBulletShotgun,
	60,
	65,
	40,
	2,
	2,
	7,
	45,
	sShotgun
),
Winchester : new create_weapon(
	sWinchester,
	sprite_get_bbox_right(sWinchester)- sprite_get_xoffset(sWinchester),
	oBullet_Winchester,
	80,
	47,
	105,
	7,
	7,
	1,
	0,
	sWinchester
),
SawedShotgun : new create_weapon(
	sSawedOffShotgun,
	sprite_get_bbox_right(sSawedOffShotgun)- sprite_get_xoffset(sSawedOffShotgun),
	oBulletShotgun,
	60,
	65,
	16,
	2,
	2,
	7,
	45,
	sSawedOffShotgun
)
}





