/// @description variables
subimg = 0;
_bg_alp = 1;

//random audio
randomize();
cal12 = choose(snd_aa12_shoot, snd_s12k_shoot);
cal20 = snd_i37_shoot;
cal762 = snd_fnfal_shoot;
cal556 = choose(snd_scarl_shoot, snd_m416_shoot);
cal9 = choose(snd_microuzi_shoot, snd_vector_shoot, snd_asval_shoot, snd_mp5k_shoot);
cal50ae = snd_de_shoot;
cal45acp = snd_thompson_shoot;
cal545 = snd_ak74u_shoot;

//random_audio = choose(snd_aa12_shoot, snd_scarl_shoot, snd_fnfal_shoot, snd_i37_shoot, snd_microuzi_shoot, snd_vector_shoot, snd_asval_shoot, snd_s12k_shoot, snd_mp5k_shoot, snd_m416_shoot, snd_de_shoot, snd_thompson_shoot, snd_ak74u_shoot);
random_audio = choose(cal12, cal20, cal762, cal556, cal9, cal50ae, cal45acp, cal545);