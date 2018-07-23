if (!is_finished) {
	timer++
	if (timer > text_speed) {
		text_index++;	
		if (text_index >= string_length(text_content)) {
			is_finished = true;
		}
		timer = 0;
	}
}