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

draw_set_alpha(1);
draw_set_color(text_font_color);
draw_set_font(font_main);

draw_text_ext(x, y, string_copy(text_content, 1, text_index), 40, text_width);