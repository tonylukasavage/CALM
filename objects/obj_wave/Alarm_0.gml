/// @description Insert description here
// You can write your code in this editor
isActive = true;
waveSound = audio_play_sound("snd_wave", 10, false);
audio_sound_gain(waveSound, 0.1, 0);
audio_sound_pitch(waveSound, random_range(0.5, 1.5));