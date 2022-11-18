vsp = vsp + grv; 

if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
}
x = x + hsp;
//Vertical Collision
if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp); 
	}
	vsp = 0;
}
y = y + vsp;
		
//Animation
if (!place_meeting(x,y+1,oWall))
{
	sprite_index = sEnemyRight;
	image_speed = 0;
	if (sign(vsp) < 0) image_index = 2 else image_index = 0;
}

 if(hsp < 0)
    {
        image_xscale = -1.0;
    } else {
        image_xscale = 1.0;
    }

