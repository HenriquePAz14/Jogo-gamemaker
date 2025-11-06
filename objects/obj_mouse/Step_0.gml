/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(vidaatual > 0){
	x = mouse_x
	y = mouse_y
} else {

	if(voltamouse == false){
		
		alarm[0] = 170
		voltamouse = true
		
	}
}


if(global.primeirahabilicomprada == true){
	if(global.esta_desenhando == false){
		if(estano_cooldown == false){
			if(mouse_check_button_pressed(mb_left)){
			

					alarm[1] = pincel_actualtimeuse
					esta_usando = true
					
			}  
		}
	}
}
	
if (esta_usando) {

		global.esta_desenhando = true
} else {
		global.esta_desenhando = false;  // Desativa o desenho da linha quando o botão do mouse não estiver pressionado
		surface_free(surface)
		surface = surface_create(room_width, room_height);
		}
	


//show_debug_message(alarm[2])




