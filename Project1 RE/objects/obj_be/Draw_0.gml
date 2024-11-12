draw_text(room_width / 2, room_height / 2 - 40, "Game Over");
draw_text(room_width / 2, room_height / 2 - 20, "Press Space to Restart.");
draw_text(room_width / 2, room_height / 2 + 20, "When you reach the end of the road, you find out it's just the inner space of the prison");
draw_text(room_width / 2, room_height / 2 + 40, "Still, you didn't make it out");

// obj_end Key Pressed Event (Key: vk_enter)
if (keyboard_check_pressed(vk_space)) {
    room_goto(Room2); // back to start screen
}