if (keyboard_check_pressed(vk_space) && is_showing_dialogue) {
    current_dialogue_index += 1;

    if (current_dialogue_index >= array_length(text)) {
        is_showing_dialogue = false;
    }
}

if (!is_showing_dialogue && keyboard_check_pressed(vk_space)) {
    instance_destroy();  
}
