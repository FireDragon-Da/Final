x = player_x;
y = player_y;
draw_set_font(Font1);
draw_sprite(spr_chatbox, 0, x + text_x, y + text_y);
if (is_showing_dialogue && current_dialogue_index < array_length(text)) {
    draw_text_ext(x + 10 + text_x, y + 10 + text_y, text[current_dialogue_index], string_height(text[current_dialogue_index]), sprite_width - 10);
}
