right_key = keyboard_check(vk_right);
up_key = keyboard_check(vk_up);
left_key = keyboard_check(vk_left);
down_key = keyboard_check(vk_down);


//get xspd and yspd
xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;


//collisions
if place_meeting(x + xspd, y, obj_wall)
	{
	xspd = 0;
	}
	if place_meeting(x, y + yspd, obj_wall)
	{
	yspd = 0;
	}


//move the player
x += xspd;
y += yspd;