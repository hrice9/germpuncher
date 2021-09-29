/// @description Basic Player Movements

get_command_inputs(dev_num);



// Set facing
for(var i = 0; i < instance_number(obj_fighter); i++) {
	var obj = instance_find(obj_fighter, i)
	if(obj != self) {
		var tmpfacing = sign(obj.x - x);
		if(tmpfacing != 0) {
			facing = tmpfacing;
		}
	}
}

image_xscale = facing;



velocity_y += global.grav * gravity_scale * global.time_scale;
gravity_scale = velocity_y > 0 ? 1.2 : 1;

grounded = false;
if(place_meeting(x, y + velocity_y, obj_collider)) {
	while(!place_meeting(x, y + sign(velocity_y), obj_collider)) {
		y += sign(velocity_y);
	}
	velocity_y = 0;
	grounded = true;
}

y += velocity_y * global.time_scale;

// Left and right movement
if(grounded && !down) {
	velocity_x = horizontal * move_speed; // Ease into motion
}

if(grounded && jump) {
	velocity_y = jump_force;
}

if(place_meeting(x + velocity_x, y, obj_collider)) {
	while(!place_meeting(x + sign(velocity_x), y, obj_collider)) {
		x += sign(velocity_x);
	}
	velocity_x = 0;
}

x += velocity_x * global.time_scale;