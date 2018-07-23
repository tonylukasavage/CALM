timer++;

if (triangle_visible == 1 && timer > 20) {
	triangle_visible = 0;	
	timer = 0;
} else if (triangle_visible == 0 && timer > 20) {
	triangle_visible = 1;
	timer = 0;
}