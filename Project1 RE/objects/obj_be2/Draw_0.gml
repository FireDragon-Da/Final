draw_text(room_width / 2, room_height / 2 - 40, "Game Over");
draw_text(room_width / 2, room_height / 2 - 20, "Press Space to Restart.");
draw_text(room_width / 2, room_height / 2 + 20, "You use the fake key to open the gate, and unfortunately, you faied");
draw_text(room_width / 2, room_height / 2 + 40, "And the guards noticed your behaviour, they kicked you back to the inner prison");

// obj_end Key Pressed Event (Key: vk_enter)
if (keyboard_check_pressed(vk_space)) {
    room_goto(Room2); // back to start screen
}