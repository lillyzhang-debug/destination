if(cooldown > 0) {
	cooldown -= 1;
}

if(char_count < string_length(text[page])) {
		char_count += text_speed;
}
if(cooldown <= 0 && (keyboard_check_pressed(ord("E")) || keyboard_check_pressed(vk_space))) {
	// if text still typing, we skip to end on re press
	if(char_count < string_length(text[page])){
		char_count = string_length(text[page]);
		countdown = 10;
	}
	
	// if text is done, go to next page or destroy
	if(page < array_length(text) - 1) {
		page++;
		char_count = 0;
	} else {
		player_obj.interact_cooldown = 15;
		if(creator != noone) {
			creator.talking = false;
		}
		instance_destroy();
	}
}


