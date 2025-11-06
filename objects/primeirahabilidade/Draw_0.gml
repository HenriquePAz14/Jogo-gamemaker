/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_set_font(fnt_habilidades)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)


draw_self()

if (position_meeting(mouse_x, mouse_y, id)) {
	
	draw_set_color(c_red)
	draw_rectangle(x - 160, y - 180, x + 160 , y - 50, 1)
	draw_set_color(-1)
	
	draw_text(x, y - 170, "Pincel vermelho")
	draw_text_ext(x, y - 100, "Quando equipado, aperte o botão esquerdo para desenhar uma linha vermelha que corta os inimigos e se tornar invulnerável por alguns segundos.", 20, 300)
	draw_sprite_ext(spr_moedinha,0,x,y + 50,4,4,0,c_white,1)
	

	draw_text(x,y + 50,"x0")

	
	
}

if(botaosegurado){
	draw_set_color(c_red)
	draw_line(x + sprite_get_width(spr_primeirahabilidade) / 2, y, obj_recargamini.x - sprite_get_width(spr_duracao)/2, y)
	draw_set_color(-1)
}

draw_set_halign(-1)
draw_set_valign(-1)
draw_set_font(-1)