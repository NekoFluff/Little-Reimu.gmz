switch (dpos){
    case 0:
        global.difficulty = 4;
        room_selected = room_intro;
        alarm[0] = 2;
        audio_stop_sound(global.music);
        break;
    case 1:
        global.difficulty = 3;
        room_selected = room_intro;
        alarm[0] = 2;
        audio_stop_sound(global.music);
        break;
    case 2:
        global.difficulty = 2;
        room_selected = room_intro;
        alarm[0] = 2;
        audio_stop_sound(global.music);
        break;
    case 3:
        global.difficulty = 1;
        room_selected = room_intro;
        alarm[0] = 2;
        audio_stop_sound(global.music);
        break;
    case 4:
        alarm[0] = 2;
        room_selected = room_menu;
        break;
    default:
        break;
}
