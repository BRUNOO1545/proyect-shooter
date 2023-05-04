/// @description actualizar cliente

if (global.discord_rich == 1)
	{
		var ev_type = async_load[? "event_type"];

		if (ev_type == "DiscordReady")
			{
				//tiempo
				np_setpresence_timestamps(date_current_datetime(), 0, false);
				
				//conected
				discord_ready = true;
			}
	}