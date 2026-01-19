function scr_movement(_x_speed, _y_speed, _collision_obj){

	// horizontal collision
	if(place_meeting(x + _x_speed, y, _collision_obj)) {
		while(!place_meeting(x + sign(_x_speed), y, _collision_obj)) {
			x += sign(_x_speed);
		}
		_x_speed = 0;
	}
	x += _x_speed;
	
	//vertical collisions
	if(place_meeting(x, y + _y_speed, _collision_obj)){
		while(!place_meeting(x, y + sign(_y_speed), _collision_obj)) {
			y += sign(_y_speed);
		}
		_y_speed = 0;
	}
	y += _y_speed;
	
}