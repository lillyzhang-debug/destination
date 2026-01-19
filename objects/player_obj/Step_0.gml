// IF THERE IS A TEXTBOX DO NOT RUN ANYTHING ELSE
if(instance_exists(obj_textbox)) {
	image_speed = 0;
	sprite_index = player_sprites.idle;
	if (move_state == "down")  image_index = 0;
    if (move_state == "up")    image_index = 3;
    if (move_state == "left")  image_index = 1;
    if (move_state == "right") image_index = 2;
	exit;
}
// for depth sorting
depth = -y;
// movement check
var _key_left  = keyboard_check(ord("A"));
var _key_right = keyboard_check(ord("D"));
var _key_up    = keyboard_check(ord("W"));
var _key_down  = keyboard_check(ord("S"));

var _is_moving = (_key_left || _key_right || _key_up || _key_down);

_x_spd = (_key_right - _key_left) * move_speed;
_y_spd = (_key_down - _key_up) * move_speed;

if (keyboard_check(ord("A")))
{
	move_state = "left";
	facing = 180;
}
else if (keyboard_check(ord("D")))
{
	move_state = "right";
	facing = 0;
}
else if (keyboard_check(ord("W")))
{
	move_state = "up";
	facing = 90;
}
else if (keyboard_check(ord("S")))
{
	move_state = "down";
	facing = 270;
}
else {
	move_state = move_state;
}

if (!_is_moving) { 
    // IDLE LOGIC: Stop animation and show the correct "facing" frame
    sprite_index = player_sprites.idle;
    image_speed = 0; 

    if (move_state == "down")  image_index = 0;
    if (move_state == "up")    image_index = 3;
    if (move_state == "left")  image_index = 1;
    if (move_state == "right") image_index = 2;
} 
else {
    // WALKING LOGIC: Play the animation for the current move_state
    image_speed = 1; 
    
    if (move_state == "left")  sprite_index = player_sprites.left;
    if (move_state == "right") sprite_index = player_sprites.right;
    if (move_state == "up")    sprite_index = player_sprites.up;
    if (move_state == "down")  sprite_index = player_sprites.down;
}


// collision logic
scr_movement(_x_spd, _y_spd, obj_solid);

// interaction logic
if(interact_cooldown > 0) {
	interact_cooldown--;
}
check_interact();

