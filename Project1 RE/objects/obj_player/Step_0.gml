
if (keyboard_check_pressed(vk_shift) && !runaudio) {
    mvspd = 5;
    audio_play_sound(snd_run, 1, true); 
    runaudio = true; 
}
if (!keyboard_check(vk_shift) || !(keyboard_check(ord("W")) || keyboard_check(ord("A")) || keyboard_check(ord("S")) || keyboard_check(ord("D")))) {
    if (audio_is_playing(snd_run)) {
        audio_stop_sound(snd_run); 
        runaudio = false; 
		mvspd = 1.5;
    }
}
// Check for right movement

if (keyboard_check(ord("D")) && !place_meeting(x +mvspd,y,obj_door)&& !place_meeting(x+mvspd,y,obj_wall)&& !place_meeting(x+mvspd,y,obj_npc)&& !place_meeting(x+mvspd,y,obj_npc2)&& !place_meeting(x+mvspd,y,obj_wall2)){

        x+= mvspd
    
}

// Check for left movement
else if (keyboard_check(ord("A"))&& !place_meeting(x-mvspd,y,obj_door)&& !place_meeting(x-mvspd,y,obj_wall)&& !place_meeting(x-mvspd,y,obj_npc)&& !place_meeting(x-mvspd,y,obj_npc2)&& !place_meeting(x-mvspd,y,obj_npc)&& !place_meeting(x-mvspd,y,obj_npc2)&& !place_meeting(x-mvspd,y,obj_wall2)){
   
        x-= mvspd
    
}

// Check for down movement
else if (keyboard_check(ord("S"))&& !place_meeting(x,y+mvspd,obj_door)&& !place_meeting(x,y+mvspd,obj_wall)&& !place_meeting(x,y+mvspd,obj_npc)&& !place_meeting(x,y+mvspd,obj_npc2)&& !place_meeting(x,y+mvspd,obj_npc)&& !place_meeting(x,y+mvspd,obj_npc2)&& !place_meeting(x,y+mvspd,obj_wall2)){
   
        y+= mvspd
    
}

// Check for up movement
else if (keyboard_check(ord("W"))&& !place_meeting(x,y-mvspd,obj_door)&& !place_meeting(x,y-mvspd,obj_wall)&& !place_meeting(x,y-mvspd,obj_npc)&& !place_meeting(x,y-mvspd,obj_npc2)&& !place_meeting(x,y-mvspd,obj_npc)&& !place_meeting(x,y-mvspd,obj_npc2)&& !place_meeting(x,y-mvspd,obj_wall2)){
   
        y-= mvspd
    
}
if (keyboard_check(ord("W"))) {
    state = "up";
} else if (keyboard_check(ord("A"))){
    state = "left";
} else if (keyboard_check(ord("S"))){
    state = "down";
}else if (keyboard_check(ord("D"))){
    state = "right";
}else {
    state = "idle";  // No input, set to idle
}

switch (state) {
    case "up":
        sprite_index = spr_up;
        break;
    case "down":
        sprite_index = spr_down;
        break;
    case "left":
        sprite_index = spr_left;
        break;
	case "right":
        sprite_index = spr_right;
        break;
	case "idle":

        image_index = 0;  // Stop animation at the first frame

		break;
}