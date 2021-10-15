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
		case "OnBlock":
			block_frames --;
			blocking = true;
			if(block_frames > 0) {
				// Set the sprite to the blocking hold sprite
				sprite_index = block_sprite;
			}
	}
});

//show_debug_message(instance_id_get(event_data[? "element_id"]));
//show_debug_message(event_data[? "element_id"]);