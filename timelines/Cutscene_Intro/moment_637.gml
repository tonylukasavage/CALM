global.state = GAME_STATE.inactive;

with (global.charlie) {
	sprite_index = spr_charlie_getup;
	timeline_moment_add_script(global.timeline, 677, scr_intro_stop_animation_charlie);
}