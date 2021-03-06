/// @description Basic Player Movements
if(!attacking && hit_stun_count <= 0 && lag_frames <= 0 && block_frames <= 0 && !dash) {
	get_command_inputs(dev_num);
} else if(block_frames > 0) {
	blocking = true;
	horizontal = 0;
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
				dash_direction = 1; // dash in the direction that the player is facing (this is only changed when backdashing)
			}
		}
	}
}


image_xscale = facing;
image_speed = global.time_scale;

if(!dash) {
	if(!spec) {
		gravity_scale = velocity_y > 0 ? 1.2 : 1;
	}
	velocity_y += global.grav * gravity_scale * global.time_scale;
} else {
	gravity_scale = 0;
	velocity_y = 0;
	velocity_x = dash_speed * facing;
}
//velocity_y += global.grav * gravity_scale * global.time_scale;


grounded = false;
if(place_meeting(x, y + velocity_y, obj_collider)) {
	while(!place_meeting(x, y + sign(velocity_y), obj_collider)) {
		y += sign(velocity_y);
	}
	velocity_y = 0;
	grounded = true;
}

if(grounded_dash && dash) {
	grounded = true;
}

if(!dash) {
	y += velocity_y * global.time_scale;
}

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
	velocity_x = dash_speed * facing * dash_direction;
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


if(grounded) {
	if(place_meeting(x + velocity_x, y, obj_fighter)) {
		while(!place_meeting(x + sign(velocity_x), y, obj_fighter)) {
			x += sign(velocity_x);
		}
		velocity_x = 0;
	}
}

x += velocity_x * global.time_scale;


block_frames -= global.time_scale;
hit_stun_count -= global.time_scale;
lag_frames -= global.time_scale;


if(hit_stun_count > 0 || block_frames > 0) {
	attacking = false;
}