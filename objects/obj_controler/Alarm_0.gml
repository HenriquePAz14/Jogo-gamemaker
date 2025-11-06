/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

aleanumero = irandom_range(0,3)

if (aleanumero == 0){

spawny = random_range(160,208)

instance_create_layer(-10,spawny,layer,obj_quadrado)
obj_quadrado.aleanumero = 0


if(spawny > 384){
	obj_quadrado.subir = false
} else {
	obj_quadrado.subir = true
}

obj_quadrado.direitar = true


} else if (aleanumero == 1){

spawnx = random_range(221,1145)
instance_create_layer(spawnx,788,layer,obj_quadrado)
obj_quadrado.aleanumero = 1


if(spawnx > 683){
	obj_quadrado.direitar = false
} else {
	obj_quadrado.subir = true
}

obj_quadrado.subir = true


} else if (aleanumero == 2){

spawnx = random_range(221,1145)
instance_create_layer(spawnx,-10,layer,obj_quadrado)
obj_quadrado.aleanumero = 2


if(spawnx > 683){
	obj_quadrado.direitar = false
} else {
	obj_quadrado.subir = true
}

obj_quadrado.subir = false


} else if (aleanumero == 3){

spawny = random_range(160,208)
instance_create_layer(1376,spawny,layer,obj_quadrado)

obj_quadrado.aleanumero = 3

if(spawny > 384){
	obj_quadrado.subir = false
} else {
	obj_quadrado.subir = true
}

obj_quadrado.direitar = false


}


if(obj_mouse.vidaatual > 0){
	alarm[0] = 200
} else {
	alarm[0] = 0
}