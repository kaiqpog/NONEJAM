timer = 60;
timer_desaparecer = 1800
distancia_player = 150

seguir_player = function() //Seguir o jogadot
{
	if (instance_exists(obj_player)) //Detectando se o player existe
			{
			var _dist_player = point_distance(x, y, obj_player.x, obj_player.y) //Detectando a distancia entre o player 
				
				if (_dist_player < distancia_player) //Se a distancia for menor que 150
				{
					var _dir			=			point_direction(x, y, obj_player.x, obj_player.y)
					direction		=			_dir
					speed			=			lerp(speed, 15, 0.5)
					image_angle =			lerp(image_angle, direction, 0.2)
					}		
					if (place_meeting(x, y, obj_player))
{
   global.plasma += 1
	instance_destroy()
}
				}
}