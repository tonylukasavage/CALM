// shadow
draw_set_alpha(0.66);
draw_set_colour(c_black);
draw_roundrect_ext(x1 + shadow_offset, y1 + shadow_offset, x2 + shadow_offset, y2 + shadow_offset, 32, 32, false);

// box outline
draw_set_alpha(0.66);
draw_set_colour(text_box_outline_color);
draw_roundrect_ext(x1, y1, x2, y2, 32, 32, false);

// box
draw_set_alpha(1);
draw_set_colour(text_box_color);
draw_roundrect_ext(
	x1 + inner_padding,
	y1 + inner_padding,
	x2 - inner_padding,
	y2 - inner_padding,
	32, 32, false);
