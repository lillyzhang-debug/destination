// if not already in dialogue
if(!instance_exists(obj_textbox)) { 
	// the snowman is now talking
	talking = true;
	//create dialogue box
	var _db = instance_create_layer(0, 0, "building_instances", obj_textbox);
	
	_db.creator = id;
	
	// snowman text
	_db.text[0] = "What a nice day!"
	_db.text[1] = "What, you think it's cold?"
	_db.text2[0] = "You can press E or Space to interact with things!"
	_db.text2[1] = "...though since you're talking to me, I guess you already knew that."
}
