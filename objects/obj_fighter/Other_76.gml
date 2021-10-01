/// @description Receive Animation Messages


// TODO: Build the actually event handling structure
	// Only handle events from self
	
event_message = event_data[? "message"];
/*
if(event_data[? "event_type"] == "sprite event") {
	
	// Now I can act on the instance
	if(instance == id) {
		show_debug_message("HI");
		switch(message) {
			case "OnHitStun":
				// Do some math magic
				hit_stun_count --;
				show_debug_message("Hit Stun");
				break;
			
			default:
				break;
		}
	}
}
*/

handle_broadcast("sprite event", function() {
	switch(event_message) {
		case "OnHitStun":
			attacking = false;
			hit_stun_count --;
			break;
	}
});