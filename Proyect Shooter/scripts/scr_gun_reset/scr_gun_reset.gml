function scr_gun_reset(){
	
	//reiniciar timer
	global.timer = 0;
	
	//ultima arma
	global.last_gun_used = -1;
	global.last_gun_used_name = "";
	global.last_gun_used_hand_gun = true;

	//mano y especiales
	global.knifepunch = 1;
	global.taserbaterymax = 100;
	global.taserbatery = global.taserbaterymax;
	global.drillbaterymax = 100;
	global.drillbatery = global.drillbaterymax;
	global.chainsawgasmax = 1000;
	global.chainsawgas = global.chainsawgasmax;

	//arma
	global.aa12bullets = 0;
	global.i37bullets = 0;
	global.fnfalbullets = 0;
	global.mubullets = 0;
	global.scarlbullets = 0;
	global.vectorbullets = 0;
	global.asvalbullets = 0;
	global.s12kbullets = 0;
	global.mp5kbullets = 0;
	global.m416bullets = 0;
	global.debullets = 0;
	global.thompsonbullets = 0;
	global.ak74ubullets = 0;
	global.mp40bullets = 0;
	global.magnumbullets = 0;
	global.ak47bullets = 0;
	global.glock17bullets = 0;
	global.m1014bullets = 0;
	global.sawedoffbullets = 0;
	global.aek971bullets = 0;
	global.p250sbullets = 0;
	global.spas12bullets = 0;
	global.an94bullets = 0;
	global.m1911bullets = 0;
	global.mp7sbullets = 0;
	global.dp12bullets = 0;
	
	//balas max
	global.cal9bulletsmax = 0;
	global.cal12bulletsmax = 0;
	global.cal20bulletsmax = 0;
	global.cal556bulletsmax = 0;
	global.cal762bulletsmax = 0;
	global.cal50aebulletsmax = 0;
	global.cal45acpbulletsmax = 0;
	global.cal545bulletsmax = 0;
	global.cal357bulletsmax = 0;

}