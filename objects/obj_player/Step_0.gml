var current_walk_speed = walk_speed;

// B = 4
// A = 3
// Y = 1
// X = 2

//Shortcut to Quit
if(keyboard_check_pressed(vk_escape)){ game_end(); }

/*
//Input + Movement
if(keyboard_check(vk_right)){
	x += spd;
	sprite_index = spr_player_side;
	image_xscale = 1;
	image_speed = 1;
} else if(keyboard_check(vk_left)){
	x -= spd;
	sprite_index = spr_player_side;
	image_xscale = -1;
	image_speed = 1;
} else if(keyboard_check(vk_up)){
	y -= spd;
	sprite_index = spr_player_up;
	image_speed = 1;
} else if(keyboard_check(vk_down)){
	y += spd;
	sprite_index = spr_player;
	image_speed = 1;
} else {
	image_speed = 0;
	image_index = 0;
}

//Clamp Player's position to be inside the (tiled) room space
var xbuf=37; var ybuf = 34;
x = clamp(x, xbuf, room_width-xbuf); 
y = clamp(y, ybuf, room_height-ybuf+2);
*/

switch(global.state) {
	case GAME_STATE.inactive:
		return;
	case GAME_STATE.active:
		var action_count = 0;
		
		// see if the run button is down
		if (gamepad_button_check(player_device, gp_face4)) {
			show_debug_message("go fast");
			current_walk_speed = walk_speed * 2;
			image_speed = 30;
			action_count++;
		} else {
			image_speed = 15;	
		}
		
		// get the joystick position
		var gamepadH = gamepad_axis_value(player_device, gp_axislh);
		var gamepadV = gamepad_axis_value(player_device, gp_axislv);
		
		// horizontal movement
		if (gamepadH > 0.1) {
			sprite_index = side_sprite;
			x += current_walk_speed;
			image_xscale = 1;
			action_count++;
		} else if (gamepadH < -0.1) {
			sprite_index = side_sprite;
			x -= current_walk_speed;
			image_xscale = -1;
			action_count++;
		}
		
		// vertical movement
		if (gamepadV > 0.1) {
			sprite_index = down_sprite;
			y += current_walk_speed;	
			action_count++;
		} else if (gamepadV < -0.1) {
			sprite_index = up_sprite;
			y -= current_walk_speed;
			action_count++;
		}
		
		// if we didn't move, set the sprite to idle
		if (action_count == 0) {
			image_speed = 0;
			image_index = 0;
		} else {
			image_speed = 1;	
		}
		
		return;
	case GAME_STATE.text:
		if (gamepad_button_check_pressed(player_device, gp_face3)) {	
			scr_textbox_next();
		}
		return;
}
