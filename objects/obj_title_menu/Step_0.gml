//get inputs
up_key = keyboard_check_pressed(87);
down_key = keyboard_check_pressed(83);
accept_key = keyboard_check_pressed(vk_space)

//store number of options in current menu
op_lenght = array_length(option[menu_level]);


//move through the menu
pos += down_key - up_key;
if pos >= op_lenght {pos = 0};
if pos < 0 {pos = op_lenght-1}


//using the options
if accept_key {
	
		var _sml = menu_level
	
	switch(menu_level) {
		case 0:
			switch(pos){
				//start game
			case 0: room_goto_next();break;
				//setting
			case 1: menu_level = 1; break;
				//quit game
			case 2: game_end(); break;
			}
			break;
		//settings
		case 1:
			switch(pos) {
			//window size
			case 0:
		
			break;
			//brightness
			case 1:
		
			break;
			//controls
			case 2:
		
			break;
			//controls
			case 3:
			menu_level = 0;
			}
		break;
	
		}
		//set the position back
		if _sml != menu_level {pos = 0};
	
		//correct option lenght
	op_lenght = array_length(option[menu_level]);
}