var player_distance = point_distance(x, y, obj_player.x, obj_player.y);


if(player_distance <= 64 && keyboard_check_pressed(vk_space)){
    if (!triggered) {
        var chatbox_instance = instance_create_layer(x, y, "Instances_1", obj_chatbox);
        chatbox_instance.activate_chat_box(dialogue);  
        audio_play_sound(snd_talk, 1, false); 
        triggered = true;
    }
}


if(player_distance >= 96 && player_distance<=128){
    if (instance_exists(obj_chatbox)) {
        with (obj_chatbox) {
            instance_destroy();  
        }
    }
    triggered = false;
}
