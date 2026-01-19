// setup
// think about finding a font?

// draw dialogue box @ x = 50 y = 500
draw_sprite(spr_dialogbox, 0, 100, 450);

// text should be white, each line 600 px 
draw_set_colour(c_white);
draw_set_font(default_dialog);

var _current_text = string_copy(text[page], 1, char_count);
draw_text_ext(170, 500, _current_text, 50, 900);



