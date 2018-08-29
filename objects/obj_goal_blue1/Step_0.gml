/// @description Insert description here
// You can write your code in this editor

image_angle += 3;
if (image_angle > 360) {
	image_angle = 0;	
}


var inc = 0.01;
var min_scale = 0.75;
var max_scale = 1.0;

if (scale_up) {
	if (image_xscale >= max_scale) {
		image_xscale = max_scale;
		image_yscale = max_scale;
		scale_up = false;
	} else {
		image_xscale += inc;
		image_yscale += inc;
	}
} else {
	if (image_xscale <= min_scale) {
		image_xscale = min_scale;
		image_yscale = min_scale;
		scale_up = true;
	} else {
		image_xscale -= inc;
		image_yscale -= inc;
	}
}