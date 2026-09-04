if position_meeting(mouse_x,mouse_y,id) {
	if item != undefined {
		draw_text(x,y,item.name)
		draw_text(x,y + 20,item.desc)
	}
}