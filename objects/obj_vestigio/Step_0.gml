
switch (estado)
{
    case "crescendo":
        
        image_xscale = lerp(image_xscale, tamanho_max, 0.3);
		image_yscale = image_xscale;
        
        if (image_xscale >= tamanho_max)
        {
            estado = "desaparecendo";
        }
        
    break;
    
    
    case "desaparecendo":
        
        image_alpha -= velocidade_fade;
        
        if (image_alpha <= 0)
        {
            instance_destroy();
        }
        
    break;
}