right_key = keyboard_check(68);  // D key (ASCII value 68) for moving right
up_key = keyboard_check(87);     // W key (ASCII value 87) for moving up
left_key = keyboard_check(65);   // A key (ASCII value 65) for moving left
down_key = keyboard_check(83);   // S key (ASCII value 83) for moving down


//get xspd and yspd
xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;

//pause player (eg. for room transitions)
if instance_exists(obj_pauser)
    {
    xspd = 0;
	yspd = 0;
	}

//set sprite
mask_index = sprite[DOWN]
if yspd == 0
    {
    if xspd > 0 {face = RIGHT};
    if xspd < 0 {face = LEFT};
    }
if xspd > 0 && face == LEFT {face = RIGHT};
if xspd < 0 && face == RIGHT {face = LEFT};

if xspd == 0
    {
    if yspd > 0 {face = DOWN};
    if yspd < 0 {face = UP};
    }
if yspd > 0 && face == UP {face = DOWN};
if yspd < 0 && face == DOWN {face = UP};
sprite_index = sprite[face];


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



//animate
if xspd == 0 && yspd == 0
     {
	 image_index = 0;
     }