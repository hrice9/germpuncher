// Have some sort of target screen shake scale
// Have a reference value that lerps to the target


shake_intensity += sign(target_shake_intensity - shake_intensity) * .5;
shake_intensity = max(shake_intensity, 0);

var cam = view_get_camera(view_current);
//cam.x += random_range(-1, 1);
camera_set_view_pos(cam, random_range(-1, 1) * shake_intensity, random_range(-1, 1) * shake_intensity);

