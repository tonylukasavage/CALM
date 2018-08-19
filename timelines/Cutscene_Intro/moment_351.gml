global.state = GAME_STATE.inactive;
//instance_create_layer(0, 0, "Inst_Walls", obj_ocean_wall);
with (global.controller.june) {
	sprite_index = spr_june_getup;
	timeline_moment_add_script(global.timeline, 390, scr_intro_stop_animation);
}

global.controller.charlie = instance_create_layer(256, 256, "Inst_Players_Behind_Waves", obj_charlie);
with (global.controller.charlie) {
	sprite_index = spr_charlie_submerged;
	path_start(Path_CharlieWashUp, 1.25, path_action_stop, true);
}