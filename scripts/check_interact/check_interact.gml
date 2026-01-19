function check_interact(){ // interact key is "E"
	// check if player is on cooldown first
	if (interact_cooldown > 0) return;
	if(keyboard_check_pressed(ord("E")) || keyboard_check_pressed(vk_space)) {
		//determine check location based on where obj is facing
		var _dist = 32;
		var _check_x = x + lengthdir_x(_dist, facing);
		var _check_y = y + lengthdir_y(_dist, facing);
		
		// get the check distance
		if (move_state == "right") _check_x = x + _dist;
		if (move_state == "left") _check_x = x - _dist;
		if (move_state == "down") _check_y = y + _dist;
		if (move_state == "up") _check_y = y -_dist;
		
		// check for any interactables 
		var _inst = instance_place(_check_x, _check_y, obj_interactable);
		
		if(_inst != noone) {
			if(!instance_exists(obj_textbox)) {
				with(_inst) {
					event_user(0);
				}
			}
		}
	}
}