
/*
	bean: Objeto con los datos necesarios
	      Las propiedades del bean son:
	      - punto1x
	      - punto1y
	      - punto2x
	      - punto2y
	      - distancia
*/
function calcDistancia( bean ){
	// Proceso
	var dx = bean.punto2x - bean.punto1x
	var dy = bean.punto2y - bean.punto1y
	var d = Math.sqrt( Math.pow(dx,2) + Math.pow(dy,2) );
	// Respuesta
	bean.distancia = d;
	// Retorno
	return bean;
}

