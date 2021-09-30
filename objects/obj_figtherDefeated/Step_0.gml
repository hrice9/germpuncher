velocity_y += global.grav * global.time_scale;

if(place_meeting(x, y + velocity_y, obj_collider)) {
	while(!place_meeting(x, y + sign(velocity_y), obj_collider)) {
		y += sign(velocity_y);
	}
	velocity_y = 0;
	grounded = true;
	velocity_x = 0;
}

y += velocity_y * global.time_scale;

if(place_meeting(x + velocity_x, y, obj_collider)) {
	while(!place_meeting(x + sign(velocity_x), y, obj_collider)) {
		x += sign(velocity_x);
	}
	velocity_x = 0;
}

x += velocity_x * global.time_scale;