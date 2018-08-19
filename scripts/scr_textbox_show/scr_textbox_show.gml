// change game state to inactive
global.state = GAME_STATE.inactive;

// incoming arguments
if (is_array(argument0)) {
	textbox_content = argument0;
} else {
	textbox_content[0] = argument0;
}
textbox_position = is_undefined(argument1) ? TEXTBOX_POSITION.bottom : argument1; 
//text_index = string_pos(":", textbox_content) + 1;

// create instance of textbox
textbox = instance_create_layer(0, 0, "Inst_TextBox", obj_text_box);
textbox.on_destroy = argument2;

// get room height/width based on camera
cam = camera_get_default();
width = camera_get_view_width(cam);
height = camera_get_view_height(cam);

// calculate position of textbox based on room height/width
x_padding = textbox.x_padding;
y_padding = textbox.y_padding;
textbox_width = width - (x_padding * 2);
textbox_height = 200;
x1 = x_padding;
x2 = width - x_padding;

show_debug_message(textbox_position);
show_debug_message(TEXTBOX_POSITION.top);

if (textbox_position == TEXTBOX_POSITION.top) {
	y1 = y_padding;
	y2 = textbox_height + y_padding;
} else {
	y1 = height - textbox_height - y_padding;
	y2 = height - y_padding;
}

textbox.x1 = x1;
textbox.x2 = x2;
textbox.y1 = y1;
textbox.y2 = y2;

// calculate position of text within textbox
anim = textbox.text_animated;
anim.text_content = textbox_content;
//anim.text_index = text_index;
anim.x = x1 + textbox.text_padding;
anim.y = y1 + textbox.text_padding;
anim.text_width = x2 - x1 - textbox.text_padding*2;

// calculate position of next text indicator
next = textbox.text_next;
next.x = x2 - textbox.text_padding - next.size;
next.y = y2 - textbox.text_padding/2 - next.size;

// create global to reference the textbox
global.textbox = textbox;