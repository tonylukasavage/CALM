/// @description Insert description here
// You can write your code in this editor
if (isActive) {
	if (isComingIn) {
		y += waveSpeed;
		if (y >= 32 * 7) {
			isComingIn = false;	
		}
	} else {
		if (pauseTimer > 15) {
			y -= waveSpeed/3;	
			image_alpha /= 1.05;
			audio_sound_gain(waveSound, audio_sound_get_gain(waveSound) * 0.95, 0);
			if (y <= 32 * 6.5) {
				image_alpha = 0;
				//audio_stop_sound(waveSound);
				instance_destroy();	
				instance_create_layer(0, -32, "Instances", obj_wave);
			}
		} else {
			pauseTimer++;	
		}
	}
}
