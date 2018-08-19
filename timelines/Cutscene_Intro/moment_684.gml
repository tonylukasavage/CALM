with (global.controller.june) {
	path_start(Path_June_Lightning, 5, path_action_stop, false);
	sprite_index = spr_june_arm_right;
}

with (global.controller.charlie) {
	path_start(Path_Charlie_Lightning, 5, path_action_stop, false);
	sprite_index = spr_charlie_arm_left;
}

room_first.timeline_running = false;
wordsLightning[0] = "JUNE & CHARLIE: HOLY BANANA CRACKERS!!!";
scr_textbox_show(wordsLightning, TEXTBOX_POSITION.bottom, scr_timeline_run);