/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (visivel){
	self.visible = true
}

if(global.recargacomprada == false){
	
	
	if(global.carteira > 10){
		if (mouse_check_button(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
		    // Se o mouse estiver sobre o botão e o botão esquerdo for pressionado
		    tempo_pressionado += 1; // Aumenta o tempo de pressão
			image_speed = 0.3
			if(image_index >= 10){
				image_speed = 0
			}
    
		    if (tempo_pressionado >= tempo_a_pressionar) {
		        botaosegurado = true; // Marca que o botão foi segurado por tempo suficiente
				global.carteira -= 10
		    }
		} else {
		    // Se o botão não está sendo pressionado, reseta o contador
			if (botaosegurado == false){
			    tempo_pressionado = 0;
				image_speed = 0;
				image_index = 0;
			}
		}
	}
} else {
	botaosegurado = true
}

if (botaosegurado) {
	// Coloque aqui a ação que você quer executar
	
	obj_aumentarduracao.visivel = true
	obj_recargasortuda.visivel = true
	
	image_index = 10
	image_speed = 0
	
	global.recargacomprada = true
}
