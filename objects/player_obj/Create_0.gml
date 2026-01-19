move_speed = 4;

depth = -y;

tilemap = layer_tilemap_get_id("grassh");
interact_cooldown = 0;

// need to add smth that tracks whether the player is moving and what direction
move_state = "idle";
player_sprites = { // holds all the animated walking sprites
	idle: nbc,
	right: nbc_right_walk,
	left: nbc_left_walk,
	up: nbc_up_walk,
	down: nbc_down_walk
	}

// start on idle, no rotating through frames, facing down 
sprite_index = player_sprites.idle;
_is_moving = false;
image_speed = 0;

// save direction player is facing
facing = 270;

// set movement now
var _move_x = 0;
var _move_y = 0;