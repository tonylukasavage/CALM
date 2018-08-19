// enums
enum TEXTBOX_POSITION {
	top = 1,
	bottom = 2
};

enum GAME_STATE {
	active = 1,
	inactive = 2,
	text = 3
};

global.state = GAME_STATE.inactive;
global.controller = instance_create_depth(0, 0, 0, obj_controller);
global.events = ds_map_create();

// start initial cutscene
room_first.timeline_index = Cutscene_Intro;
global.timeline = room_first.timeline_index;
room_first.timeline_position = 0;
room_first.timeline_running = true;
