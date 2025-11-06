/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var centrox = room_width / 2
var centroy = room_height / 2

if(obj_mouse.vidaatual <= 0){

	var m_x= device_mouse_x_to_gui(0)
	var m_y= device_mouse_y_to_gui(0)

	

	valor = lerp(valor, 1, 0.025)
	draw_set_alpha(valor)
	
	draw_set_color(c_black)
	draw_rectangle(0,0,room_width,room_height,false)
	
	draw_set_alpha(1)
	draw_set_color(-1)
	
		
	draw_set_font(fnt_gameover)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	
	if(valor > .75){
	
		draw_set_color(c_white)
		draw_text(centrox, centroy, "V O C Ê  M O R R E U" )
		
		if(valor > .95){
			
			draw_set_font(fnt_menu)
			
			for(i = 0; i < opcoesmorridas_max; i++){
		

				
				var stringw = string_width(opcoesmorridas[i])
				var stringy = string_height(opcoesmorridas[i])
				
				var superdist = centroy + 150 + 50 * i
				
				
				if(point_in_rectangle(m_x,m_y,centrox - stringw/2, superdist - stringy/2 ,centrox + stringw/2, superdist + stringy/2 )){
					draw_set_color(c_red)
					index = i
					if(mouse_check_button_pressed(mb_left)){
						if(index == 0){
							room_restart()
						} if(index == 1){
							room_goto(1)
						}
					}
			
				} else {
					draw_set_color(c_white)
				}
			
				draw_text(centrox, centroy + 150 + (50 *i), opcoesmorridas[i] )
		
			}
		
		}
		
	draw_set_color(-1)
	draw_set_font(-1)
	draw_set_halign(-1)
	draw_set_valign(-1)
	
		}
	

} else {
	valor = 0
}


