var _camx = camera_get_view_x(view_camera[0]);
var _camy = camera_get_view_y(view_camera[0]);

var _p = 0.5;

draw_sprite_tiled(spr_bg_pink, 0, _camx*_p, _camy*_p);

//draw_sprite_tiled(spr_bg_pink, 1, _camx*.25, _camy*.25);