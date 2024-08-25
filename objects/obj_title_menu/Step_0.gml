//get inputs
up_key = keyboard_check(87);
down_key = keyboard_check(83);


//move through the menu
pos += down_key - up_key;
if pos >= op_lenght {pos = 0};
if pos < 0 {pos = op_lenght-1}
