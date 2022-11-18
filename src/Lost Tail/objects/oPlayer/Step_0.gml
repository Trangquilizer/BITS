
//Player Input
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check(vk_space) || keyboard_check(ord("W"));

//Calculate Movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv; 

if (place_meeting(x,y+1,oWall)) && (key_jump)
{
	vsp = -7;
}

//Melee/bark attack
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
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
	sprite_index = sPlayerRight;
	image_speed = 0;
	if (sign(vsp) < 0) image_index = 2 else image_index = 0;
}

 if(hsp < 0)
    {
        image_xscale = -1.0;
    } else {
        image_xscale = 1.0;
    }

