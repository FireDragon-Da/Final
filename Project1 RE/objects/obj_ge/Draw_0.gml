
draw_text(room_width / 2, room_height / 2 - 40, "Game Over");
draw_text(room_width / 2, room_height / 2 - 20, "Press Space to Restart.");
draw_text(room_width / 2, room_height / 2 + 20, "You use the key to open the gate, when the mushroom guards approaching, you already left");
draw_text(room_width / 2, room_height / 2 + 40, "Freedom and more edible mushrooms are waiting for you.");

// obj_end Key Pressed Event (Key: vk_enter)
if (keyboard_check_pressed(vk_space)) {
    room_goto(Room2); // back to start screen
}