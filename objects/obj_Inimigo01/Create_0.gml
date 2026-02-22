
mov_time = room_speed * random_range(1, 2)

distancia_player			= 500
vida_enemy					=	10


movimento_def = function()
{
	
		direction	=	irandom(359)
		speed		=	random(2)
		
		image_angle = direction
	
}
 room_limit = function()
 {

	 image_angle = direction
	if (x > room_width or x < 0)
	{
		direction = !direction
		
	}
	if (y < 0) vspeed *= -1
	if (y > room_height) vspeed *=  -1
 }
movimento_def()
mudar_mov_time = function()
{
	mov_time--
	
	if (mov_time <= 0)
	{
		movimento_def()
		
		mov_time = room_speed * random_range(1,2)
	}	
	
}

seguir_jogador = function()
{
		if (instance_exists(obj_player))
			{
			var _dist_player = point_distance(x, y, obj_player.x, obj_player.y)
				
				if (_dist_player < distancia_player)
				{
					
					var _dir			=			point_direction(x, y, obj_player.x, obj_player.y)
					direction		=			_dir
					speed =1
					}		
				}
			}

levar_dano = function(_dano)
{
	vida_enemy-=_dano;
	
	if (vida_enemy <= 0)
	{
	instance_destroy()
	explodir()
	}
}


explodir = function()
{
		var _rastro = instance_create_layer(x,y, "balas", obj_vestigio)
		var _qtd  = irandom_range(10,15)	
		
		repeat(_qtd)
		{
			var _pedaco					= instance_create_layer(x, y, layer, obj_inimigo01_pedaco)	
			_pedaco.speed			=	random_range(10,30)
			_pedaco.direction		= irandom(359)
			_pedaco.image_angle = _pedaco.direction
			
		}
	
}