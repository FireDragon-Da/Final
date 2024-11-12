var player_distance = point_distance(x, y, obj_player.x, obj_player.y);
if (player_distance <= 32 && global.key_taken ){
	audio_play_sound(snd_door, 1, false); 
	global.key_taken = false;
	global.fake = false;
	global.be = false
	room_goto(good_end);
}
if (player_distance <= 32 && global.fake){
	audio_play_sound(snd_door, 1, false); 
	global.key_taken = false;
	global.fake = false;
	global.be = false
	room_goto(bad_end2);
}