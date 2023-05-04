/// @description atras

//llamar al script
scr_controller_menu()

//esc
if (esc)
	{
		room_goto(menu_room);
	}


//rotacion de load
ld_rot -= 3;


//img
if (img_timer < 0)
	{
		img_scl += 1;
		img_timer = img_timermax;
	}
else
	{
		img_timer -= 1;
	}

if (img_scl > img_max)
	{
		img_scl = 0;
	}

switch img_scl
	{
		case 0:
			img = global.buy_img_0;
		break;
		
		case 1:
			img = global.buy_img_1;
		break;
		
		case 2:
			img = global.buy_img_2;
		break;
		
		case 3:
			img = global.buy_img_3;
		break;
		
		case 4:
			img = global.buy_img_4;
		break;
	}