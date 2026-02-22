speed *= .9
if (timer > 0)
{
    timer--;
}

if (timer == 0)
{
seguir_player()
}


if(timer_desaparecer >0)
{
	timer_desaparecer--

	if (timer_desaparecer == 0)
	{
		
		image_alpha-- 
		if(image_alpha = 0)
		instance_destroy()
	}
}

