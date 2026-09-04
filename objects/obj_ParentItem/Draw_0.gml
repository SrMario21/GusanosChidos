var _scale = 1
var _color = c_white
var _alpha = 1

if position_meeting(mouse_x,mouse_y,id) {
	_scale = 1.5
}
draw_sprite_ext(sprite_index,0,x,y,_scale,_scale,0,_color,_alpha)