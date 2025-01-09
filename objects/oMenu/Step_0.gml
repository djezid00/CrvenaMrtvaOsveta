var up_key = keyboard_check_pressed(vk_up);
var down_key = keyboard_check_pressed(vk_down);
var accept_key = keyboard_check_pressed(vk_enter);

option_length = array_length(option[menu_level]);

position += down_key - up_key;

if position >= option_length
{
	position = 0;
}

if position < 0
{
	position = option_length - 1;
}

if accept_key {
	var _sml = menu_level;
	switch(menu_level)
	{
		case 0:
			switch(position)
			{
				case 0:
					room_goto_next();
				break;
	
				case 1:
					menu_level = 1;
				break;
	
				case 2:
					game_end();
				break;
			}
		break;
		
		case 1:
			switch(position)
			{
				case 0:
					
				break;
	
				case 1:
					menu_level = 0;
				break;
			}
		break;
	}
	
	if _sml != menu_level {position = 0};
	option_length = array_length(option[menu_level]);
}