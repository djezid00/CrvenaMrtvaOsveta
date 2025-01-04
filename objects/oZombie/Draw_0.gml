//draw flipped
draw_sprite_ext(sprite_index, image_index,x,y,face,image_yscale,image_angle,image_blend,image_alpha);



//draw hp
var _healtPercent = hp / maxHp;
var _hpImage = _healtPercent * (sprite_get_number (sEnemyHealth) -1)
draw_sprite (sEnemyHealth, _hpImage, x,y - sprite_height/2 -1)

draw_text(x,y,string (hp));