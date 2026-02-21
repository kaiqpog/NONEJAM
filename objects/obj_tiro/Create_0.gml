//Código do tamanho da bala no inicio
image_xscale = 3
image_yscale = image_xscale

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
	image_xscale = lerp(image_xscale, 1, 0.2)
	image_yscale = image_xscale
}

//

efeito_tiro = function()
{
		draw_self()
		
		
		gpu_set_blendmode(bm_add)
		draw_sprite_ext(spr_tiroSFX, 0, x, y, image_xscale * 3.1, image_yscale *3.1, image_angle, c_red, 0.7)
		gpu_set_blendmode(bm_normal)
}
