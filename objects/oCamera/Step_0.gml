var grabCameraWidth = camera_get_view_width(view_camera[0]);
var grabCameraHeight = camera_get_view_height(view_camera[0]);
var grabCameraX = camera_get_view_x(view_camera[0]);
var grabCameraY = camera_get_view_y(view_camera[0]);

var cameraX = clamp(target.x - grabCameraWidth/2, 0, room_width - grabCameraWidth);
var cameraY = clamp(target.y - grabCameraHeight/2, 0, room_height - grabCameraHeight);

var smooth = 0.1;
camera_set_view_pos(view_camera[0], lerp(grabCameraX, cameraX, smooth), lerp(grabCameraY, cameraY, smooth));









