function scr_create_us(){

	var file = working_directory + global.userstats_file;
	var _stats = "stats";

	if !file_exists(file)
		{
			#region //Create user stats if doesnt exists.
				ini_open(file)
			
				//user
				ini_write_real(_stats, "sUserDeaths", 0)
				ini_write_real(_stats, "sUserKills", 0)
				ini_write_real(_stats, "sUserShoots", 0)
			
				//guns
				ini_write_real(_stats, "sGunTaked", 0)
				ini_write_real(_stats, "sGunDropped", 0)
			
				//shoots
				ini_write_real(_stats, "sShootCal9", 0)
				ini_write_real(_stats, "sShootCal12", 0)
				ini_write_real(_stats, "sShootCal20", 0)
				ini_write_real(_stats, "sShootCal556", 0)
				ini_write_real(_stats, "sShootCal762", 0)
				ini_write_real(_stats, "sShootCal50ae", 0)
				ini_write_real(_stats, "sShootCal45acp", 0)
				ini_write_real(_stats, "sShootCal545", 0)
				ini_write_real(_stats, "sShootCal357", 0)
			
				//enemy
				ini_write_real(_stats, "sEnemyArms", 0)
				ini_write_real(_stats, "sEnemyHeads", 0)
				ini_write_real(_stats, "sEnemyDestroyed", 0)
				ini_write_real(_stats, "sEnemyElectroshocked", 0)
				ini_write_real(_stats, "sEnemyDrilled", 0)
			
				ini_close();
			
				room_restart();
			#endregion
		}
	else
		{
			#region //Read user stats.
				ini_open(file)
			
				//user
				global.user_deaths = ini_read_real(_stats, "sUserDeaths", 0)
				global.user_kills = ini_read_real(_stats, "sUserKills", 0)
				global.user_shoots = ini_read_real(_stats, "sUserShoots", 0)
			
				//guns
				global.gun_taked = ini_read_real(_stats, "sGunTaked", 0)
				global.gun_dropped = ini_read_real(_stats, "sGunDropped", 0)
			
				//shoots
				global.shoot_cal9 = ini_read_real(_stats, "sShootCal9", 0)
				global.shoot_cal12 = ini_read_real(_stats, "sShootCal12", 0)
				global.shoot_cal20 = ini_read_real(_stats, "sShootCal20", 0)
				global.shoot_cal556 = ini_read_real(_stats, "sShootCal556", 0)
				global.shoot_cal762 = ini_read_real(_stats, "sShootCal762", 0)
				global.shoot_cal50ae = ini_read_real(_stats, "sShootCal50ae", 0)
				global.shoot_cal45acp = ini_read_real(_stats, "sShootCal45acp", 0)
				global.shoot_cal545 = ini_read_real(_stats, "sShootCal545", 0)
				global.shoot_cal357 = ini_read_real(_stats, "sShootCal357", 0)
			
				//enemy
				global.enemy_arms = ini_read_real(_stats, "sEnemyArms", 0)
				global.enemy_heads = ini_read_real(_stats, "sEnemyHeads", 0)
				global.enemy_destroyed = ini_read_real(_stats, "sEnemyDestroyed", 0)
				global.enemy_electroshocked = ini_read_real(_stats, "sEnemyElectroshocked", 0)
				global.enemy_drilled = ini_read_real(_stats, "sEnemyDrilled", 0)
			
				ini_close();
			#endregion
		}

}