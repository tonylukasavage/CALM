draw_set_alpha(1);
draw_set_color(text_font_color);
draw_set_font(font_main);
draw_text_ext(
	x, 
	y, 
	string_copy(text_content[text_content_index], 1, text_index), 
	40, 
	text_width
);