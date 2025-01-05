//get cam coordinates
var _camX = camera_get_view_x(view_camera[0]);
var _camY = camera_get_view_y(view_camera[0]);


//draw the player's hp
//var _hpString ="HP:" + string(playerHp) + "/" + string(playerMaxHp);
//draw_text (_camX,_camY,_hpString);

if instance_exists(oPlayer){
	var _border =4;
	draw_sprite(sHealthBar, 0, _camX + _border, _camY + _border);

	for(var i = 0; i < playerMaxHp; i++){
		//show current hp
		var _img =1;
		if i+1 <= playerHp {_img =2}
	
		var _sep =8;
		draw_sprite(sHealthBar,_img, _camX + _border + _sep*i,_camY + _border)
	}
}