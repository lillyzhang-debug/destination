if(!instance_exists(obj_textbox)) { 
	//create dialogue box
	var _db = instance_create_layer(0, 0, "building_instances", obj_textbox);
	
	_db.creator = id;
	
	_db.text[0] = "It's a bush."
	_db.text[1] = "Yep. Just a bush."
}