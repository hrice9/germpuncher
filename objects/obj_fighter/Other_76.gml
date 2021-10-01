/// @description Receive Animation Messages


// TODO: Build the actually event handling structure
	// Only handle events from self

if(event_data[? "event_type"] == "sprite event") {
	var instance = instance_id_get(event_data[? "element_id"]);
	// Now I can act on the instance
	if(instance == self) {
		switch(event_data[? "message"]) {
			case "OnYourMom":
				break;
			
			default:
				break;
		}
	}
}