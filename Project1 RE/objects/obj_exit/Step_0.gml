if global.be{
	visible = true;
	if (place_meeting(x,y,obj_player)){
	audio_play_sound(snd_exit, 1, false); 
	room_goto(bad_end)
	global.be = false
	global.key_taken = false;
	global.fake = false;
	
}
}
