/// @description text selector

//change
scr_controller_menu();

if (right) && (current_page < page_limit)
	{
		current_page += 1;
	}

if (left) && (current_page > 1)
	{
		current_page -= 1;
	}


//dir
switch (current_page)
	{
		case 0:
			current_text = string(global.txt146);
		break;
		
		case 1:
			current_text = string(global.news_page1);
		break;
		
		case 2:
			current_text = string(global.news_page2);
		break;
		
		case 3:
			current_text = string(global.news_page3);
		break;
		
		case 4:
			current_text = string(global.news_page4);
		break;
		
		case 5:
			current_text = string(global.news_page5);
		break;
		
		default:
			current_text = "ERROR = Game can't find data on page " + string(current_page);
		break;
	}