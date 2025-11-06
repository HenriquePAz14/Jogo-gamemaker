/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
draw_self()

draw_set_font(fnt_habilidades)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

if (position_meeting(mouse_x, mouse_y, id)) {
	
	draw_set_color(c_black)
	draw_rectangle(x - 160, y - 100, x + 160 , y - 60, false)
	draw_set_color(c_red)
	draw_rectangle(x - 160, y - 100, x + 160 , y - 60, 1)
	draw_set_color(-1)
	
	draw_text_ext(x, y - 80, "10% de chance de recarregar o pincel automáticamente ao usá-lo", 20, 300)
	draw_sprite_ext(spr_moedinha,0,x,y + 50,4,4,0,c_white,1)
	

	draw_text(x,y + 50,"x10")
}

depth = -1
	
	