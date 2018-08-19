with(global.controller.charlie) {
	sprite_index = spr_charlie_submerged_nowater;	
	layer = layer_get_id("Inst_Players");
}

words2[0] = "JUNE: CHARLIE!!!";
room_first.timeline_running = false;
scr_textbox_show(words2, TEXTBOX_POSITION.bottom, scr_timeline_run);