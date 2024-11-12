var player_distance = point_distance(x, y, obj_player.x, obj_player.y);
show_debug_message(string(player_distance));


if (player_distance <= 64 && keyboard_check_pressed(vk_space) && !triggered) {
    if (!info) {
        var chatbox_instance = instance_create_layer(x, y, "Instances_1", obj_chatbox);
        chatbox_instance.activate_chat_box(dialogue);  
    } else {
      
        var chatbox_instance = instance_create_layer(x, y, "Instances_1", obj_chatbox);
        chatbox_instance.activate_chat_box(real_dialogue); 
		global.be= true;
		global.key_taken = false;
    }
    
    audio_play_sound(snd_talk, 1, false);
    triggered = true;  
}

if (global.key_taken) {
    info = true;
}
if (player_distance >= 96 && player_distance<=128 && triggered) {
    if (instance_exists(obj_chatbox)) {
        with (obj_chatbox) {
            instance_destroy(); 
        }
    }
    triggered = false;  
}
