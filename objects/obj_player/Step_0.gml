var current_walk_speed = walk_speed;

// B = 4
// A = 3
// Y = 1
// X = 2

switch(global.state) {
	case GAME_STATE.inactive:
		return;
	case GAME_STATE.active:
		var action_count = 0;
		if (gamepad_button_check(player_device, gp_face4)) {
			current_walk_speed = walk_speed * 2;
			image_speed = 30;
			action_count++;
		} else {
			image_speed = 15;	
		}
		
		var gamepadH = gamepad_axis_value(player_device, gp_axislh);
		var gamepadV = gamepad_axis_value(player_device, gp_axislv);
		
		if (gamepadH > 0.1) {
			sprite_index = walk_right_sprite;
			x += current_walk_speed;
			idle_sprite = idle_right_sprite;
			action_count++;
		} else if (gamepadH < -0.1) {
			sprite_index = walk_left_sprite;
			x -= current_walk_speed;	
			idle_sprite = idle_left_sprite;
			action_count++;
		}
		
		if (gamepadV > 0.1) {
			sprite_index = walk_down_sprite;
			y += current_walk_speed;	
			idle_sprite = idle_sprite;
			action_count++;
		} else if (gamepadV < -0.1) {
			sprite_index = walk_up_sprite;
			y -= current_walk_speed;
			idle_sprite = idle_up_sprite;
			action_count++;
		}
		
		if (action_count == 0) {
			sprite_index = idle_sprite;
		}
		return;
	case GAME_STATE.text:
		if (gamepad_button_check_pressed(player_device, gp_face3)) {	
			scr_textbox_next();
		}
		return;
}
