/// @description rotar imagen y anim

//rotate
if (image_angle < -15)
	{
		mode = "suma";
	}

if (image_angle > 15)
	{
		mode = "rest";
	}

switch mode
	{
		case "rest":
			image_angle -= animspd;
		break;
		
		case "suma":
			image_angle += animspd;
		break;
	}

//limite de fotogramas
switch imglimit
	{
		//hablar
		case 0:
			if (image_index > 10)
				{
					image_index = 0;
					imglimit = choose(0, 0, 0, 0, 1);
				}
		break;
		
		//seguir hasta el final
		case 1:
			if (image_index > 22)
				{
					image_index = 0;
					imglimit = choose(0, 0, 0, 0, 1);
				}
		break;
	}