if position_meeting(mouse_x,mouse_y,id) {
	if item != undefined {
		
		var _text_width = string_width(item.desc);

		var _border = 20;
		var _box_width = _text_width + _border * 2;
		
		draw_sprite_ext(spr_Textbox,0,x,y,3,3,0,c_white,1)
		draw_text(x+space,y+space,item.name)
		draw_text(x+space,y+space + 20,item.desc)
		
	}
}