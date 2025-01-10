draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1);

draw_set_font(FontMenu);
draw_set_valign(fa_top);
draw_set_halign(fa_center);

for (var i = 0; i < option_length; i++)
{
	var _c = $4C3B44;
	if position == i {_c = c_white};
	draw_text_color(x + option_offset_X, y + option_offset_Y + option_space * i, option[menu_level, i], _c, _c, _c, _c, 1);
}