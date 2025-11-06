
if (jamudou == false){
	if (subir){
	vspeed = vel_y * -1 
} else {
	vspeed = vel_y 
}
if (direitar){
	hspeed = vel_x
} else {
	hspeed = vel_x * -1
}
jamudou = true
}

if (pass == true){
	
	if(y <= 35){
		vspeed *= -1
	} if (x <= 35){
		hspeed *= -1
	} if (y >= 730){
		vspeed *= -1
	} if (x >= 1335){
		hspeed *= -1
	}
	
} else {
	
	 if (aleanumero == 1 && y < 730){
		 pass = true
	 } if (aleanumero == 2  && y > 35){
		 pass = true
	 } if (aleanumero == 0 && x > 35){
		 pass = true
	 } if (aleanumero == 3 && x < 1335){
		 pass = true
	 }
}



if(antispam == false){
	if(global.esta_desenhando){
		if (instance_place(x,y,obj_mouse)){
			vidasqur--
			antispam = true
			sprite_index = spr_quadrado_dano
			tempo_sprite = current_time + 80
			
		}
}}

if(current_time > tempo_sprite){
	sprite_index = spr_quadrado
}

if  (instance_place(x,y,obj_mouse) == noone){
			antispam = false
		}
		
if(vidasqur = 0){
	instance_destroy(self)
}
