text_x = 0;
text_y = 50;

visible = false;
player_x = obj_player.x - 96;
player_y = obj_player.y - 128;
current_dialogue_index = 0;
is_showing_dialogue = true;


function activate_chat_box(new_text) {
    visible = true;
    text = new_text;  
    current_dialogue_index = 0;  
    is_showing_dialogue = true;  
    player_x = obj_player.x - 96;  
    player_y = obj_player.y - 128;
}
