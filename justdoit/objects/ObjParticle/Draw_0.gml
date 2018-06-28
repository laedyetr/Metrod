


switch(irandom(1))
{
	case 0:
	draw_set_colour(c_white);
	break
	
	case 1:
	draw_set_colour(c_black);
	break
}

draw_sprite(SprParticle,0,x,y);