
velocidade = 5
velh			 = 0
velv			 = 0	
vel_tiro		 = 30
espera_tiro= 0
demora_tiro= room_speed * 0.1

movimentacao = function()
{
	var _up,	_down,	_right,	_left;
	
	//Pegando input novo do usuario
	_up			=	keyboard_check(ord("W"))
	_down	= keyboard_check(ord("S"))
	
	//checando pra onde ele se move
		velv		=	(_down - _up) * velocidade
		
	y += velv
	
	_right		=	keyboard_check(ord("D"))
	_left		=	keyboard_check(ord("A"))
	
	velh		= (_right - _left) * velocidade
	
	x += velh
	
	if ((_up or _down or _right or _left) > 0)
	image_speed = 1
	else
	{
		image_speed = 0
	}
}

atirando = function()
{
	var _dir		= point_direction(x, y, mouse_x, mouse_y)
	
	image_angle	=	_dir
	
	var _fire		=	mouse_check_button(mb_left)
	if (espera_tiro <= 0)
	{	sprite_index = spr_player
	if (_fire)
			{
				sprite_index = spr_player_atirando
				var _tiro =		instance_create_layer(x, y, "cursor", obj_tiro)
				_tiro.speed		=		vel_tiro
				_tiro.direction	=		_dir
				espera_tiro = demora_tiro
			}	
	}
	else 
	{
			espera_tiro--	
	}
	
}