if (is_waiting) { return; }

timer++
if (timer > text_speed) {
	text_index++;	
	len = string_length(text_content[text_content_index]);
	if (text_index >= len) {
		text_index = len;
		is_waiting = true;
		global.state = GAME_STATE.text;
	}
	timer = 0;
}