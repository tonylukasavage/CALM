global.state = GAME_STATE.inactive;

with (global.june) {
	sprite_index = spr_june_getup;
	timeline_moment_add_script(global.timeline, 390, scr_intro_stop_animation);
}

global.charlie = instance_create_layer(256, 256, "Instances", obj_charlie);
with (global.charlie) {
	sprite_index = spr_charlie_submerged;
	path_start(Path_CharlieWashUp, 1.25, path_action_stop, true);
}