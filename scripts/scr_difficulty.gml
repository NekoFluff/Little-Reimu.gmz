switch (dpos){
    case 0:
        global.difficulty = 4;
        room_goto(room_intro);
        break;
    case 1:
        global.difficulty = 3;
        room_goto(room_intro);
        break;
    case 2:
        global.difficulty = 2;
        room_goto(room_intro);
        break;
    case 3:
        global.difficulty = 1;
        room_goto(room_intro);
        break;
    case 4:
        room_goto(room_menu);
        break;
    default:
        break;
}
