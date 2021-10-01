// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function handle_broadcast(inputType, callback){
	var instance = instance_id_get(event_data[? "element_id"]);
	if(event_data[? "event_type"] == inputType) {
		// Now I can act on the instance
		if(instance == id) {
			callback();
		}
	}
}