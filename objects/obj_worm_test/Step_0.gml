switch(state){
	case "PATROL":
	if (speed != 0)
	{
		if (hspeed > 0){
			image_xscale = size
		}
		else if (hspeed < 0){
			image_xscale = -size
		}
	}
}