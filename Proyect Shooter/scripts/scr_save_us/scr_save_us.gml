function scr_save_us(){

	var file = working_directory + global.userstats_file;
	var _stats = "stats";

	//Update user stats
	ini_open(file)
	
	//user
	ini_write_real(_stats, "sUserDeaths", global.user_deaths)
	ini_write_real(_stats, "sUserKills", global.user_kills)
	ini_write_real(_stats, "sUserShoots", global.user_shoots)
			
	//guns
	ini_write_real(_stats, "sGunTaked", global.gun_taked)
	ini_write_real(_stats, "sGunDropped", global.gun_dropped)
			
	//shoots
	ini_write_real(_stats, "sShootCal9", global.shoot_cal9)
	ini_write_real(_stats, "sShootCal12", global.shoot_cal12)
	ini_write_real(_stats, "sShootCal20", global.shoot_cal20)
	ini_write_real(_stats, "sShootCal556", global.shoot_cal556)
	ini_write_real(_stats, "sShootCal762", global.shoot_cal762)
	ini_write_real(_stats, "sShootCal50ae", global.shoot_cal50ae)
	ini_write_real(_stats, "sShootCal45acp", global.shoot_cal45acp)
	ini_write_real(_stats, "sShootCal545", global.shoot_cal545)
	ini_write_real(_stats, "sShootCal357", global.shoot_cal357)
	
	//enemy
	ini_write_real(_stats, "sEnemyArms", global.enemy_arms)
	ini_write_real(_stats, "sEnemyHeads", global.enemy_heads)
	ini_write_real(_stats, "sEnemyDestroyed", global.enemy_destroyed)
	ini_write_real(_stats, "sEnemyElectroshocked", global.enemy_electroshocked)
	ini_write_real(_stats, "sEnemyDrilled", global.enemy_drilled)
			
	ini_close();

}