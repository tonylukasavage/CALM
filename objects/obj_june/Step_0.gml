switch(state) {
	case PLAYER_STATE.inactive:
		return;
	case PLAYER_STATE.active:
		if (gamepad_button_check_pressed(player_device, gp_face1)) {
			show_debug_message("June pressed button 1");	
		}
		if (gamepad_button_check(player_device, gp_padl)) {
			x -= walk_speed;	
		}
		if (gamepad_button_check(player_device, gp_padr)) {
			x += walk_speed;	
		}
		if (gamepad_button_check(player_device, gp_padd)) {
			y += walk_speed;	
		}
		if (gamepad_button_check(player_device, gp_padu)) {
			y -= walk_speed;	
		}
		return;
	case PLAYER_STATE.text:
		if (gamepad_button_check_pressed(player_device, gp_face1)) {
			show_debug_message("June pressed button 1");	
		}
		return;
}
