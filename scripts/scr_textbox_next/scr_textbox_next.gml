textbox_base = global.textbox;
textbox = textbox_base.text_animated;
textbox_next = textbox_base.text_next;

len = array_length_1d(textbox.text_content);
if (textbox.text_content_index >= len - 1) {
	instance_destroy(textbox);	
	instance_destroy(textbox_next);
	instance_destroy(textbox_base);
	global.state = GAME_STATE.active;
} else {
	global.state = GAME_STATE.inactive;
	textbox.text_content_index++;
	textbox.text_index = 0;	
	textbox.is_waiting = false;
}