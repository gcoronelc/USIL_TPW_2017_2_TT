package pe.egcc.condominio.prueba;

import java.util.Random;

public class Prueba03 {
	
	public static void main(String[] args) {
		
		Random random = new Random();
		int cont  = 5;
		int n = 0;
		
		while (cont > 0){
			n = random.nextInt(25);
			cont--;
		}
		
		System.out.println("GANADOR: " + n);
		
	}

}
