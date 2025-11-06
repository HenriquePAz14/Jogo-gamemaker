/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_sprite(spr_voltar,0,0 + 100, room_height - 100)

if(point_in_rectangle(mouse_x,mouse_y,100 - sprite_get_width(spr_voltar)/2, room_height - 100 - sprite_get_height(spr_voltar)/2, 100 + sprite_get_width(spr_voltar)/2, room_height - 100 + sprite_get_height(spr_voltar)/2)){
	if(mouse_check_button_pressed(mb_left)){
		room_goto(1)
			
	}else if (keyboard_check_pressed(vk_enter)){
		room_goto(1)
	}
}

draw_set_font(fnt_barra)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

 draw_sprite_ext(spr_moedinha,0,1149,95,5,5,0,c_white,1)
 draw_text(1100,95,global.carteira)
 
 draw_set_font(-1)
 draw_set_halign(-1)
draw_set_valign(-1)