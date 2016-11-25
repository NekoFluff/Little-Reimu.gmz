switch (opos){
    case 0:
        break;
    case 1:
        break
    case 2:
        //obj_options.optionState = false;
        obj_menu.menuState = 0;
        audio_play_sound(snd_cancel, 1, false);
        audio_sound_gain(snd_cancel, global.sfxVolume/10, false);
        //show_debug_message("Running scr_options: " + string(obj_menu.menuState));
        with (obj_options){
            instance_destroy();
        }
        instance_create(0, 0, obj_options);
        break;
    default:
        break;
}
