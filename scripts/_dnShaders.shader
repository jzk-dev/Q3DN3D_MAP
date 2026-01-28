// rgbGen lightmap altera a cor de acordo com a luz
// rgbGen identity ignora a luz
// surfaceparm nolightmap: Não calcule luz nem sombras para esta superfície
// surfaceparm alphashadow: Calculz a luz passando pelos buracos do meu canal alpha e projete uma sombra detalhada no chão/parede
// alphaFunc GE128 faz o recorte seco do fundo transparente (pixels com menos de 50% de opacidade ficam invisiveis)
// cull disable: desenha a frente e o verso. O objeto torna-se "dupla face"
// eformVertexes autosprite: gira junto
//               autosprite2: nao gira pra cima

textures/_dnShaders/VENT_ROLLING
{
    qer_editorimage textures/DN3D/01_0146.tga

    surfaceparm trans
    surfaceparm nonsolid
    surfaceparm nomarks
    surfaceparm nolightmap
    cull disable

    {
        animMap 30 textures/DN3D/01_0146.tga textures/DN3D/01_0147.tga textures/DN3D/01_0148.tga textures/DN3D/01_0149.tga
        alphaFunc GE128
        depthWrite
    }
}

textures/_dnShaders/TV_FLIP
{
    qer_editorimage textures/DN3D/01_0013.TGA

    surfaceparm trans
    surfaceparm nonsolid
    surfaceparm nomarks
    surfaceparm nolightmap
    cull disable

    {
        animMap 30 textures/DN3D/01_0013.TGA textures/DN3D/01_0014.TGA textures/DN3D/01_0015.TGA
        alphaFunc GE128
        depthWrite
    }
}

textures/_dnShaders/LUZ_QUEBR
{
    qer_editorimage textures/DN3D/02_0189.tga

    surfaceparm trans
    surfaceparm nonsolid
    surfaceparm nomarks
    surfaceparm nolightmap
    cull disable

    {
        animMap 30 textures/DN3D/02_0189.tga textures/DN3D/02_0189.tga textures/DN3D/02_0189.tga textures/DN3D/02_0189_off.tga textures/DN3D/02_0189.tga textures/DN3D/02_0189_off.tga textures/DN3D/02_0189.tga 
        alphaFunc GE128
        depthWrite
    }
}

textures/_dnShaders/EXTINT
{
    qer_editorimage textures/DN3D/03_0148.tga
    surfaceparm trans
    surfaceparm nolightmap
    deformVertexes autosprite2
    surfaceparm nonsolid
    {
        map textures/DN3D/03_0148.tga
        alphaFunc GE128
        depthWrite
        rgbGen identity
    }
}

textures/_dnShaders/PLACA_FIRE
{
    qer_editorimage textures/DN3D/03_0149.TGA
    surfaceparm nonsolid
    surfaceparm detail
    surfaceparm trans
    polygonOffset        // <--- O segredo para não clipar
    {
        map textures/DN3D/03_0149.TGA
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen identity
    }
}

textures/_dnShaders/TOMADA
{
    qer_editorimage textures/DN3D/02_0200.TGA
    surfaceparm nonsolid
    surfaceparm detail
    surfaceparm trans
    polygonOffset        // <--- O segredo para não clipar
    {
        map textures/DN3D/02_0200.TGA
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen identity
    }
}

textures/_dnShaders/TERRUPTOR
{
    qer_editorimage textures/DN3D/00_0103.TGA
    surfaceparm nonsolid
    surfaceparm detail
    surfaceparm trans
    polygonOffset        // <--- O segredo para não clipar
    {
        map textures/DN3D/00_0103.TGA
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen identity
    }
}

textures/_dnShaders/CALEND
{
    qer_editorimage textures/DN3D/04_0031.TGA
    surfaceparm nonsolid
    surfaceparm detail
    surfaceparm trans
    polygonOffset        
    {
        map textures/DN3D/04_0031.TGA
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen identity
    }
}

textures/_dnShaders/RELOGIO1
{
    qer_editorimage textures/DN3D/04_0037.TGA
    surfaceparm nonsolid
    surfaceparm detail
    surfaceparm trans
    polygonOffset        
    {
        map textures/DN3D/04_0037.TGA
        alphaFunc GE128
        depthWrite
        rgbGen identity
    }
}

textures/_dnShaders/RELOGIO2
{
    qer_editorimage textures/DN3D/04_0044.TGA
    surfaceparm nonsolid
    surfaceparm detail
    surfaceparm trans
    polygonOffset        
    {
        map textures/DN3D/04_0044.TGA
        alphaFunc GE128
        depthWrite
        rgbGen identity
    }
}

textures/_dnShaders/LIX1
{
    qer_editorimage textures/DN3D/04_0039.tga
    surfaceparm trans
    surfaceparm nolightmap
    cull disable
    deformVertexes autosprite2
    {
        map textures/DN3D/04_0039.tga
        alphaFunc GE128
        depthWrite
        rgbGen identity
    }
}

textures/_dnShaders/HIDRANT
{
    qer_editorimage textures/DN3D/03_0213.tga
    surfaceparm trans
    surfaceparm nolightmap
    cull disable
    deformVertexes autosprite2
    {
        map textures/DN3D/03_0213.tga
        alphaFunc GE128
        depthWrite
        rgbGen identity
    }
}

textures/_dnShaders/PAPELAO
{
    qer_editorimage textures/DN3D/03_0183.tga
    surfaceparm trans
    surfaceparm nolightmap
    cull disable
    deformVertexes autosprite2
    {
        map textures/DN3D/03_0183.tga
        alphaFunc GE128
        depthWrite
        rgbGen identity
    }
}


textures/_dnShaders/GRAFITI_3
{
	qer_editorimage textures/DN3D/03_0166.tga
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm nonsolid
	surfaceparm nolightmap
    
	// Faz o grafiti ser renderizado acima da parede para evitar o "flicker"
	polygonOffset
	
	{
		map textures/DN3D/03_0166.tga
		// Mesclagem padrão: usa o alpha para transparência
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
}

textures/_dnShaders/GRAFITI_2
{
	qer_editorimage textures/DN3D/03_0163.tga
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm nonsolid
	surfaceparm nolightmap
    
	// Faz o grafiti ser renderizado acima da parede para evitar o "flicker"
	polygonOffset
	
	{
		map textures/DN3D/03_0163.tga
		// Mesclagem padrão: usa o alpha para transparência
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
}

textures/_dnShaders/GRAFITI_1
{
	qer_editorimage textures/DN3D/03_0164.tga
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm nonsolid
	surfaceparm nolightmap
    
	// Faz o grafiti ser renderizado acima da parede para evitar o "flicker"
	polygonOffset
	
	{
		map textures/DN3D/03_0164.tga
		// Mesclagem padrão: usa o alpha para transparência
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
}

textures/_dnShaders/CAMERA
{
    qer_editorimage textures/DN3D/02_0109.tga

    surfaceparm trans
    surfaceparm nonsolid
    surfaceparm nomarks
    polygonOffset

    deformVertexes autosprite2

    {
//        animMap 1 textures/DN3D/02_0109.tga textures/DN3D/02_0110.tga textures/DN3D/02_0111.tga textures/DN3D/02_0112.tga textures/DN3D/02_0113.tga
        animMap 1 textures/DN3D/02_0109.tga textures/DN3D/02_0110.tga textures/DN3D/02_0111.tga textures/DN3D/02_0112.tga 
addressMode clamp
        alphaFunc GE128
        rgbGen identity
    }
}

textures/_dnShaders/SCREEN_SECURITY
{
    qer_editorimage textures/DN3D/01_0239.tga

    surfaceparm trans
    surfaceparm nomarks
    surfaceparm nolightmap

    {
        animMap 7 textures/DN3D/00_0000.tga textures/DN3D/00_0000.tga textures/DN3D/00_0000.tga textures/DN3D/01_0245.tga textures/DN3D/00_0000.tga textures/DN3D/01_0245.tga
        alphaFunc GE128
        depthWrite
        rgbGen identity
    }
}

textures/_dnShaders/NUKE
{
    qer_editorimage textures/DN3D/00_0113.tga

    surfaceparm trans
    surfaceparm nonsolid
    surfaceparm nomarks
    surfaceparm nolightmap
    {
        map textures/DN3D/00_0113.tga
        alphaFunc GE128
        rgbGen identity
    }
}


textures/_dnShaders/BUJAO
{
    qer_editorimage textures/DN3D/04_0224.tga
    surfaceparm trans
    surfaceparm nolightmap
    cull disable
    deformVertexes autosprite2
    {
        map textures/DN3D/04_0224.tga
        alphaFunc GE128
        depthWrite
        rgbGen identity
    }
}


textures/_dnShaders/MUIE_PRESA
{
    qer_editorimage textures/DN3D/05_0015.tga

    surfaceparm trans
    surfaceparm nonsolid
    surfaceparm nomarks
    surfaceparm nolightmap
    cull disable

    deformVertexes autosprite2

    {
        animMap 1 textures/DN3D/05_0015.tga textures/DN3D/05_0016.tga textures/DN3D/05_0017.tga
        alphaFunc GE128
        rgbGen identity
    }
}


textures/_dnShaders/PRIVADA
{
    qer_editorimage textures/DN3D/02_0057.tga

    surfaceparm trans
    surfaceparm nonsolid
    surfaceparm nomarks
    surfaceparm nolightmap
    cull disable

    deformVertexes autosprite2

    {
        map textures/DN3D/02_0057.tga
        alphaFunc GE128
        rgbGen identity
    }
}

textures/_dnShaders/MIC
{
    qer_editorimage textures/DN3D/02_0059.tga

    surfaceparm trans
    surfaceparm nonsolid
    surfaceparm nomarks
    surfaceparm nolightmap
    {
        map textures/DN3D/02_0059.tga
        alphaFunc GE128
        rgbGen identity
    }
}

textures/_dnShaders/TORNEIRA
{
    qer_editorimage textures/DN3D/02_0062.TGA
    surfaceparm trans
    surfaceparm nolightmap
    {
        map textures/DN3D/02_0062.TGA
        alphaFunc GE128
        depthWrite
        rgbGen identity
    }
}

textures/_dnShaders/ROLO_FILME
{
    qer_editorimage textures/DN3D/04_0032.tga

    surfaceparm trans
    surfaceparm nomarks
    surfaceparm nolightmap
    cull disable

    {
        animMap 20 textures/DN3D/04_0032.tga textures/DN3D/04_0033.tga
        alphaFunc GE128
        depthWrite
        rgbGen identity
    }
}



textures/_dnShaders/FERRO_MURO
{
    qer_editorimage textures/DN3D/04_0036.TGA
    surfaceparm trans
    surfaceparm nolightmap
    {
        map textures/DN3D/04_0036.TGA
        alphaFunc GE128
        depthWrite
        rgbGen identity
    }
}

textures/_dnShaders/INNOCENT
{
    qer_editorimage textures/DN3D/04_0188.TGA
    surfaceparm trans
    surfaceparm nolightmap
    {
        map textures/DN3D/04_0188.TGA
        alphaFunc GE128
        depthWrite
        rgbGen identity
    }
}

textures/_dnShaders/VASO
{                   
    qer_editorimage textures/DN3D/04_0002.tga

    surfaceparm trans
    surfaceparm nonsolid
    surfaceparm nomarks
    surfaceparm nolightmap
    cull disable

    deformVertexes autosprite2

    {       
        map textures/DN3D/04_0002.tga
        //blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        alphaFunc GE128
        rgbGen identity
    }
}

textures/_dnShaders/FENCE
{
    qer_editorimage textures/DN3D/03_0000.TGA
    surfaceparm trans
    surfaceparm nolightmap
    cull disable
    {
        map textures/DN3D/03_0000.TGA
        alphaFunc GE128
        depthWrite
        rgbGen identity
    }
}

textures/_dnShaders/AIR_TAMP
{                                 
    qer_editorimage textures/DN3D/02_0084.TGA

    surfaceparm trans
    surfaceparm nonsolid
    surfaceparm nomarks
    surfaceparm nolightmap

    cull disable

    {
        map textures/DN3D/02_0084.TGA
        alphaFunc GE128
        rgbGen identity
    }
}

textures/_dnShaders/VENT_BROKEN
{                                 
    qer_editorimage textures/DN3D/01_0150.TGA

    surfaceparm trans
    surfaceparm nonsolid
    surfaceparm nomarks
    surfaceparm nolightmap

    cull disable

    {
        map textures/DN3D/01_0150.TGA
        alphaFunc GE128
        rgbGen identity
    }
}

textures/_dnShaders/VENT_TAMP_BROKEN
{                                 
    qer_editorimage textures/DN3D/01_0083.TGA

    surfaceparm trans
    surfaceparm nonsolid
    surfaceparm nomarks
    surfaceparm nolightmap

    cull disable

    {
        map textures/DN3D/01_0083.TGA
        alphaFunc GE128
        rgbGen identity
   }
}

textures/_dnShaders/JAN_FAKE
{
    qer_editorimage textures/DN3D/02_0251.TGA

    surfaceparm nonsolid
    surfaceparm trans
    surfaceparm nomarks
    surfaceparm nolightmap

    cull disable

    {
        map textures/DN3D/02_0251.TGA
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        alphaGen const 0.9
    }
}

textures/_dnShaders/JAN_FAKE2
{
    qer_editorimage textures/DN3D/02_0210.TGA

    surfaceparm nonsolid
    surfaceparm trans
    surfaceparm nomarks
    surfaceparm nolightmap

    cull disable

    {
        map textures/DN3D/02_0210.TGA
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        alphaGen const 0.9
    }
}

textures/_dnSky/dnSky
{
	qer_editorimage textures/_dnSky/dnSky_up.tga
	surfaceparm sky
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm nodlight

	q3map_sun 0.2 0.2 0.3 80 45 60
	q3map_surfacelight 40

	skyparms textures/_dnSky/dnSky 512 -
}

textures/_dnShaders/BENCH
{
    qer_editorimage textures/DN3D/03_0237.tga

    surfaceparm trans
    surfaceparm nonsolid
    surfaceparm nomarks
    surfaceparm nolightmap
    cull disable

    deformVertexes autosprite2

    {
        map textures/DN3D/03_0237.tga
        //blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        alphaFunc GE128
        rgbGen vertex
    }
}

textures/_dnShaders/TREE
{
    qer_editorimage textures/DN3D/03_0140.tga

    surfaceparm trans
    surfaceparm nonsolid
    surfaceparm nomarks
    surfaceparm nolightmap
    cull disable

    deformVertexes autosprite2

    {
        map textures/DN3D/03_0140.tga
        //blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        alphaFunc GE128
        rgbGen vertex
    }
}

textures/_dnShaders/FIRE1
{
    qer_editorimage textures/DN3D/08_0144.tga

    surfaceparm trans
    surfaceparm nonsolid
    surfaceparm nomarks
    surfaceparm nolightmap

    cull disable

    deformVertexes autosprite2
    //tremendo deformVertexes wave sin 0 1 0 1
    {
        animMap 15 textures/DN3D/08_0144.tga textures/DN3D/08_0145.tga textures/DN3D/08_0146.tga textures/DN3D/08_0147.tga textures/DN3D/08_0148.tga textures/DN3D/08_0149.tga textures/DN3D/08_0150.tga textures/DN3D/08_0151.tga textures/DN3D/08_0152.tga textures/DN3D/08_0153.tga textures/DN3D/08_0154.tga textures/DN3D/08_0155.tga textures/DN3D/08_0156.tga textures/DN3D/08_0157.tga
        alphaFunc GE128
        depthWrite
        //brilho rgbGen wave sin 0.8 0.2 0 2
    }
}

textures/_dnShaders/FIRE2
{
    qer_editorimage textures/DN3D/08_0145.tga

    surfaceparm trans
    surfaceparm nonsolid
    surfaceparm nomarks
    surfaceparm nolightmap
    cull disable

    deformVertexes autosprite2

    {
        animMap 12 textures/DN3D/08_0144.tga textures/DN3D/08_0145.tga textures/DN3D/08_0146.tga textures/DN3D/08_0147.tga textures/DN3D/08_0148.tga textures/DN3D/08_0149.tga textures/DN3D/08_0150.tga textures/DN3D/08_0151.tga textures/DN3D/08_0152.tga textures/DN3D/08_0153.tga textures/DN3D/08_0154.tga textures/DN3D/08_0155.tga textures/DN3D/08_0156.tga textures/DN3D/08_0157.tga
        alphaFunc GE128
        depthWrite
        rgbGen wave sin 0.85 0.15 0 6
    }
}

textures/_dnShaders/ARCADE
{
    qer_editorimage textures/DN3D/04_0023.tga

    surfaceparm trans
    surfaceparm nonsolid
    surfaceparm nomarks
    surfaceparm nolightmap
    cull disable

    {
        animMap 30 textures/DN3D/04_0023.tga textures/DN3D/04_0023.tga textures/DN3D/04_0023.tga textures/DN3D/04_0023_off.tga textures/DN3D/04_0023.tga textures/DN3D/04_0023_off.tga textures/DN3D/04_0023.tga 
        alphaFunc GE128
        depthWrite
    }
}

textures/_dnShaders/CINEMA
{
    qer_editorimage textures/DN3D/03_0157.tga

    surfaceparm trans
    surfaceparm nonsolid
    surfaceparm nomarks
    surfaceparm nolightmap
    cull disable

    {
        animMap 30 textures/DN3D/03_0157.tga textures/DN3D/03_0157.tga textures/DN3D/03_0157.tga textures/DN3D/03_0157_off.tga textures/DN3D/03_0157.tga textures/DN3D/03_0157_off.tga textures/DN3D/03_0157.tga 
        alphaFunc GE128
        depthWrite
//        rgbGen const ( 0.7 0.7 0.7 )
//        rgbGen wave square 0.3 0.7 0 2.3
//        rgbGen wave square 0.5 0.5 0.25 10.1
// suave  rgbGen wave sin 0.6 0.4 0 3
//        rgbGen wave square 0.2 0.8 0 1.7
    }
}

textures/_dnShaders/SCREEN1
{
    qer_editorimage textures/DN3D/05_0001.tga

    surfaceparm nomarks
    surfaceparm nolightmap

    {
        //animMap 10 textures/DN3D/05_0001.tga textures/DN3D/05_0002.tga textures/DN3D/05_0003.tga textures/DN3D/05_0004.tga textures/DN3D/05_0005.tga textures/DN3D/05_0006.tga textures/DN3D/05_0007.tga textures/DN3D/05_0008.tga textures/DN3D/05_0009.tga textures/DN3D/05_0008.tga textures/DN3D/05_0007.tga textures/DN3D/05_0006.tga textures/DN3D/05_0005.tga textures/DN3D/05_0004.tga textures/DN3D/05_0003.tga textures/DN3D/05_0002.tga
        animMap 10 textures/DN3D/05_0001.tga textures/DN3D/05_0002.tga textures/DN3D/05_0003.tga textures/DN3D/05_0004.tga textures/DN3D/05_0005.tga textures/DN3D/05_0004.tga textures/DN3D/05_0003.tga textures/DN3D/05_0002.tga
        rgbGen identity
    }
}

textures/_dnShaders/TV1
{
    qer_editorimage textures/DN3D/05_0010.tga

    surfaceparm nomarks
    surfaceparm nolightmap

    {
        //animMap 10 textures/DN3D/05_0001.tga textures/DN3D/05_0002.tga textures/DN3D/05_0003.tga textures/DN3D/05_0004.tga textures/DN3D/05_0005.tga textures/DN3D/05_0006.tga textures/DN3D/05_0007.tga textures/DN3D/05_0008.tga textures/DN3D/05_0009.tga textures/DN3D/05_0008.tga textures/DN3D/05_0007.tga textures/DN3D/05_0006.tga textures/DN3D/05_0005.tga textures/DN3D/05_0004.tga textures/DN3D/05_0003.tga textures/DN3D/05_0002.tga
        animMap 10 textures/DN3D/05_0010.tga textures/DN3D/05_0011.tga textures/DN3D/05_0012.tga textures/DN3D/05_0013.tga textures/DN3D/05_0012.tga textures/DN3D/05_0011.tga textures/DN3D/05_0010.tga
        rgbGen identity
    }
}

