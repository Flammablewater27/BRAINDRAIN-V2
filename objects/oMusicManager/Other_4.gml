//Player the correct music
if room == rmPinkOutside0
//|| room = "more rooms that have the same song"
{
	set_song_ingame( sngPinkRoomOutside, 60, 2*60 );	
}

//if room = "room with no music"
//{
	//set_song_ingame(noone, 3*60 )
//}

if room == rmPinkInside0
//|| room = "more rooms that have the same song"
{
	set_song_ingame( sngPinkRoomInside, 60, 0 );	
}