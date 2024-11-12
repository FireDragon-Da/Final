// obj_collectible Collision Event with obj_player
if (place_meeting(x, y, obj_player)) {
	global.key_taken = true;
	audio_play_sound(snd_key, 1, false); 
    instance_destroy(); // Destroy the collectible object

    
	
}