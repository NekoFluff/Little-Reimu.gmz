switch (mpos){
    case 0:
        room_goto(room_intro);
        break;
    case 1:
        //room_goto(room_options);
        break;
    case 2:
        //room_goto(room_music);
        break;
    case 3:
        //room_goto(room_credits);
        break;
    case 4:
        game_end();
        break;
    default:
        break;
}
