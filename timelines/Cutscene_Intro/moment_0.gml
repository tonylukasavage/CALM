// set state to inactive to prevent player action during cutscene
global.state = GAME_STATE.inactive;

// start the waves 
instance_create_layer(0, -32, "Instances", obj_wave);

// start cutscene with June washing up on shore
global.june = instance_create_layer(256, 256, "Instances", obj_june);
with (global.june) {
	sprite_index = spr_june_submerged;
	path_start(Path_JuneWashUp, 1.25, path_action_stop, true);
}
