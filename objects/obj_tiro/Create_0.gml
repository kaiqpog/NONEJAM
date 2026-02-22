//Código do tamanho da bala no inicio
image_xscale = 1
image_yscale = image_xscale
dano_arma = 5
#region //Código pra bala deixar de existir
morte_tiro = room_speed * 6
morte = function()
{
		morte_tiro--	
		
		if (morte_tiro <=0) instance_destroy()
}
#endregion

sfx_size = function() //Código pra fazer a transição de tamain da bala
{
	image_xscale = lerp(image_xscale, 10, 0.1)
	image_yscale = image_xscale
}

//

efeito_tiro = function()
{
		draw_self()
		
		
		gpu_set_blendmode(bm_add)
		draw_sprite_ext(spr_tiroSFX, 0, x, y, image_xscale * 4.1, image_yscale *4.1, image_angle, c_purple, 0.7)
		gpu_set_blendmode(bm_normal)
}



colis_enemy = function()
{
	
		var _inimigo = instance_place(x, y, obj_Inimigo01)	
		
		if(_inimigo)
		{
			
			_inimigo.levar_dano(dano_arma)
			instance_destroy()
		}
	
}
