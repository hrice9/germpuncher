/// @description Basic Player Movements
if(!attacking) {
	get_command_inputs(dev_num);
} else {
	horizontal = 0;
}

// Set facing - Do not change direction during a dash or during an attack animation
if(!dash) {
	for(var i = 0; i < instance_number(obj_fighter); i++) {
		var obj = instance_find(obj_fighter, i)
		if(obj != self) {
			var tmpfacing = sign(obj.x - x);
			if(tmpfacing != 0) {
				facing = tmpfacing;
			}
		}
	}
}

image_xscale = facing;


if(!dash) {
	gravity_scale = velocity_y > 0 ? 1.2 : 1;
}
velocity_y += global.grav * gravity_scale * global.time_scale;


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
if(grounded && !dash) {
	if(!sprint) {
		velocity_x = horizontal * move_speed * !down; // TODO: Ease into motion
	} else {
		velocity_x = horizontal * sprint_speed * !down;
	}
}


// Stop sprinting if the player stops holding forward or they press down
if(sprint && (sign(horizontal) != facing) || down) {
	sprint = false;
}

blocking = horizontal == -facing;
if(blocking) {
	// Determine if it is a crouch block or a mid block
	crouch_block = down;
}

if(dash) {
	velocity_x = dash_speed * facing;
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