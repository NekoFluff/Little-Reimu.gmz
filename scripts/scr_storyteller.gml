//scr_text("Text",speed,x,y);

txt = instance_create(argument2,argument3,obj_text);
with(txt){
    maxlength = view_wview[0] - 576;
    text = argument0;
    spd = argument1;
    font = fnt_storyteller;
    font_size = 30;
    draw_set_font(font);
    text_length = string_length(text);
} 
