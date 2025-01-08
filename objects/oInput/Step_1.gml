global.rightKey = keyboard_check(ord("D"));
global.leftKey = keyboard_check( ord("A"));
global.upKey = keyboard_check( ord ("W"));
global.downKey = keyboard_check( ord ("S"));
global.shootKey = mouse_check_button_pressed(mb_left);
//weapo swap on mouse scroll
global.scrollUp = mouse_wheel_up();
global.scrollDown = mouse_wheel_down();