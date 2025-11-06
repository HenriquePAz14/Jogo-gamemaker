// Desenha o sprite do objeto normalmente
draw_self();



if (surface != -1) {
    draw_surface(surface, 0, 0);
}

//
	
	// Se estiver desenhando a linha, adicione o traço à surface
if (global.esta_desenhando && surface != -1) {
	// 1. ENTRAR NA SURFACE (TEM QUE TER)
    surface_set_target(surface);

    draw_set_color(c_red);
    
    var thickness = 5;
    var dir = point_direction(x_anterior, y_anterior, x, y);

    var dx = lengthdir_x(thickness / 2, dir + 90);
    var dy = lengthdir_y(thickness / 2, dir + 90);

    draw_triangle(
        x_anterior - dx, y_anterior - dy,
        x_anterior + dx, y_anterior + dy,
        x + dx, y + dy,
        false
    );

    draw_triangle(
        x_anterior - dx, y_anterior - dy,
        x + dx, y + dy,
        x - dx, y - dy,
        false
    );

    draw_set_color(c_white);

    // 2. SAIR DA SURFACE (TEM QUE TER)
    surface_reset_target();
}

 x_anterior = x
 y_anterior = y
 
 if(global.primeirahabilicomprada == true){
	 
	 if(caraourecarga == 1){
		
		draw_sprite_ext(spr_caraourecargabonitin,0,1200,550,0.17,0.17,0,c_white,1)
		
	 }
	 
	if(estano_cooldown && esta_usando == false){
	
		atual_img += velo_img
		draw_sprite(spr_pincelcooldown,atual_img,1200,670)
	
	} else {
		draw_sprite(spr_pincelcarregado,0,1200,670)
		atual_img = 0
	}}

if(vidaatual >= 0){
	barra_vida = string_concat(vidaatual,"/",vida)
} else {
	barra_vida = string_concat("0","/",vida)
}

draw_set_color(c_white)
draw_set_font(fnt_barra)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

vidabar = (vidaatual/vida) * 100

draw_healthbar(30,730,130,670, vidabar, c_white, c_red, c_green, 0 ,false, true);


draw_text(80,700,barra_vida)



 draw_sprite_ext(spr_moedinha,0,1149,95,5,5,0,c_white,1)
 draw_text(1100,95,global.carteira)
 

draw_set_font(-1)
draw_set_color(-1)
draw_set_halign(-1)
draw_set_valign(-1)