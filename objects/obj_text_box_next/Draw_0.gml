if (triangle_visible == 1) {
	draw_set_alpha(0.66);
	draw_set_color(c_black);
	draw_triangle(
		x + shadow_offset,
		y + shadow_offset,
		x + size + shadow_offset,
		y + shadow_offset,
		x + size/2 + shadow_offset,
		y + size + shadow_offset,
		false
	);
	
	draw_set_alpha(1);
	draw_set_color(color);
	draw_triangle(
		x,
		y,
		x + size,
		y ,
		x + size/2,
		y + size,
		false
	);
}