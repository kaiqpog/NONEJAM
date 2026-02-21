
image_xscale = 3
image_yscale = image_xscale

sfx_size = function()
{
	image_xscale = lerp(image_xscale, 1, 0.2)
	image_yscale = image_xscale
}



efeito_tiro = function()
{
		draw_self()
		
		
		gpu_set_blendmode(bm_add)
		draw_sprite_ext(spr_tiroSFX, 0, x, y, image_xscale * 3.1, image_yscale *3.1, image_angle, c_red, 0.7)
		gpu_set_blendmode(bm_normal)
}