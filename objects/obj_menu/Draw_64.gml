draw_set_font(fnt_menu)

var gui_largura = display_get_gui_width()
var gui_altura = display_get_gui_height()
var centrox = gui_largura/2
var centroy = gui_altura/2
var dist = 55
var m_x= device_mouse_x_to_gui(0)
var m_y= device_mouse_y_to_gui(0)


for(var i = 0; i < opcoes_max; i++){
	
	if (i == 0 && !global.primeirahabilicomprada) {
        continue; // pula para a próxima opção
    }
	
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	
	var superdist = centroy + (dist * i)
	
	var stringw = string_width(opcoes[i])
	var stringy = string_height(opcoes[i])
	
	if(point_in_rectangle(m_x,m_y,centrox - stringw/2, superdist - stringy/2 ,centrox + stringw/2, superdist + stringy/2 )){
		draw_set_color(c_red)
		index = i
		if(mouse_check_button_pressed(mb_left)){
			if(index == 0){
				room_goto_next()
			} else if (index == 1){
				room_goto(3)
			}
			
			}else if (keyboard_check_pressed(vk_enter)){
			if(index == 0){
				room_goto_next()
			} else if (index == 1){
				room_goto(3)
			}

	}} else {
		draw_set_color(c_white)
	}
	draw_text(centrox ,superdist,opcoes[i])}

draw_set_font(-1)