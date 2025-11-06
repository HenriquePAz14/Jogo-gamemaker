window_set_cursor(cr_none)
vida = 10
vidaatual = vida
barra_vida = ""


if(global.recargacomprada == false){
	pincel_actualcooldown = 120
	velo_img = 0.11
} else {
	pincel_actualcooldown = 90
	velo_img = 0.1466666666666667
}
	
if(global.duracaocomprada == false){
	pincel_actualtimeuse = 45
} else {
	pincel_actualtimeuse = 60
}


atual_img = 0


esta_usando = false

estano_cooldown = false


x_anterior = x
y_anterior = y

surface = surface_create(room_width, room_height);

lines = ds_list_create();
line_lifetime = 1000;

global.esta_desenhando = false  



voltamouse = false

caraourecarga = -1