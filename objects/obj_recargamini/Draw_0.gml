/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
draw_self()

draw_set_font(fnt_habilidades)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

if (position_meeting(mouse_x, mouse_y, id)) {
	
	depth = -10
	draw_set_color(c_black)
	draw_rectangle(x - 160, y - 100, x + 160 , y - 60, 0)
	draw_set_color(c_red)
	draw_rectangle(x - 160, y - 100, x + 160 , y - 60, 1)
	draw_set_color(-1)
	
	draw_text_ext(x, y - 80, "Diminui o tempo de recarga do pincel", 20, 300)
	draw_sprite_ext(spr_moedinha,0,x,y + 50,4,4,0,c_white,1)
	
	
	draw_text(x,y + 50,"x10")

	

	
} else {
	depth = 10
}


	
if(botaosegurado){
	draw_set_color(c_red)
	if(botaosegurado){
	draw_set_color(c_red)
	
	draw_line(x + sprite_get_width(spr_recargamini) / 2, y, obj_aumentarduracao.x, y)
	draw_line(obj_aumentarduracao.x, y,obj_aumentarduracao.x, obj_aumentarduracao.y + sprite_get_height(spr_duracao)/2)
	
	//draw_line(x + sprite_get_width(spr_recargamini) / 2, y, obj_recargasortuda.x, y)
	draw_line(obj_recargasortuda.x, y,obj_recargasortuda.x, obj_recargasortuda.y - sprite_get_height(spr_caraourecarga)/2)
	
	draw_set_color(-1)
}

draw_set_halign(-1)
draw_set_valign(-1)
draw_set_font(-1)
	draw_set_color(-1)
}

draw_set_halign(-1)
draw_set_valign(-1)
draw_set_font(-1)