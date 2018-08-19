with(global.controller.june) {
	sprite_index = spr_june_idle_right;
}

with(global.controller.charlie) {
	sprite_index = spr_charlie_idle_left;
}

words4[0] = "CHARLIE: uuuuhhh... my head.... where the heck are we?";
words4[1] = "JUNE: I don't know, I just woke up here too.";
words4[2] = "CHARLIE: This place smells like beef and cheese.";
words4[3] = "JUNE: Charlie, that is inappropriate! Let's figure out what's going on here...";

room_first.timeline_running = false;
scr_textbox_show(words4, TEXTBOX_POSITION.bottom, scr_timeline_run);