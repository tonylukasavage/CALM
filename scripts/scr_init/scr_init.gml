// enums
enum TEXTBOX_POSITION {
	top = 1,
	bottom = 2
};

// establish global controller
global.controller = instance_create_depth(0, 0, 0, obj_controller);

// start initial cutscene
room_first.timeline_index = Cutscene_Intro;
room_first.timeline_position = 0;
room_first.timeline_running = true;
