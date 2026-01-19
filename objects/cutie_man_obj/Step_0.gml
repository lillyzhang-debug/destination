// if talking, the snowman moves
// if not, the snowman is still
if(!talking) {
	image_index = 0; // first sprite
	image_speed = 0;
} else {
	image_speed = 1; // make snowman move thru frames
}


// chooses which text array to read from
