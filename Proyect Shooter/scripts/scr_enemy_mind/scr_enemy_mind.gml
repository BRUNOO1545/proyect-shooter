///control de los enemigos, seguir al jugador, seguir posiciones, etc.
function scr_enemy_mind(){
	
	///test
	/***/
	
	var hspd, vspd, distance;
	
	//condicion para seguir al jugador (canfollow)
	if instance_exists(obj_player)
		{
			hspd = obj_player.x;
			vspd = obj_player.y;
			distance = point_distance(object_index.x, object_index.y, obj_player.x, obj_player.y);
			canfollow = true;
		}
	else
		{
			canfollow = false;
		}
	
	//seguir
	if (canfollow == true)
		{
			x = hspd*distance;
			y = vspd*distance;
		}
	else
		{
			hspd = x;
			vspd = y;
		}

	/***/

}