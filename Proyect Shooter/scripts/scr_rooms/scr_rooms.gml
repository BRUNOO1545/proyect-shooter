function scr_rooms(){

	//test txt
	var testtxt = "A B C D E F G H I J K L M N Ñ O P Q R S T U V W X Y Z 1 2 3 4 5 6 7 8 9 0 ¿ ? ¡ !";

	//switch de niveles y musica
	switch (global.rooms)
		{
			case 0:
				rm = continue_room;
				lvlsong = snd_introduction_short;
				lvlname = global.lvl0name;
				lvldesc = global.lvl0desc;
				lvllock = global.lvl_unlock0;
				lvlsongtxt = "BRUNOO1545 - REVELATIONS";
				global.songname = global.txt64 + "\n" + lvlsongtxt;
			break;
			
			case 1:
				rm = test_room;
				lvlsong = snd_chapter_1;
				lvlname = global.lvl1name;
				lvldesc = global.lvl1desc;//testtxt
				lvllock = global.lvl_unlock1;
				lvlsongtxt = "BRUNOO1545 - DETERMINED TO KILL";
				global.songname = global.txt64 + "\n" + lvlsongtxt;
			break;
			
			case 2:
				rm = test_room_2;
				lvlsong = snd_chapter_2;
				lvlname = global.lvl2name;
				lvldesc = global.lvl2desc;//testtxt
				lvllock = global.lvl_unlock2;
				lvlsongtxt = "BRUNOO1545 - QUESTIONABLE FRIENDSHIP";
				global.songname = global.txt64 + "\n" + lvlsongtxt;
			break;
			
			default:
				rm = continue_room;
				lvlsong = snd_introduction;
				lvlname = global.txt87;
				lvldesc = "";
				lvllock = 1;
				lvlsongtxt = global.txt87;
				global.songname = global.txt64 + "\n" + lvlsongtxt;
			break;
		}

}