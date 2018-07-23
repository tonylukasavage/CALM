// start the waves 
instance_create_layer(0, -32, "Inst_Waves", obj_wave);

// start cutscene with June washing up on shore
global.controller.june = instance_create_layer(256, 256, "Inst_Players", obj_june);
with (global.controller.june) {
	sprite_index = spr_june_submerged;
	path_start(Path_JuneWashUp, 1.25, path_action_stop, true);
}

// charlie is right behind her