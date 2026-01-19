// if not already in dialogue
if(!instance_exists(obj_textbox)) { 
	//create dialogue box
	var _db = instance_create_layer(0, 0, "building_instances", obj_textbox);
	
	_db.creator = id;
	
	_db.text[0] = "Seems like it's being renovated..."
	_db.text[1] = "Maybe they should pick up the pace..."
}