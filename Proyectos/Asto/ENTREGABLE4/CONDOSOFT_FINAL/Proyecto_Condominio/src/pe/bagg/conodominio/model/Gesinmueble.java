package pe.bagg.conodominio.model;

import java.util.ArrayList;
import java.util.List;

public class Gesinmueble {
   private List<Item> lista;

   public Gesinmueble()
                        {
	lista=new ArrayList<>();
  }
	public List<Item> getLista(){
	return lista;	
	}
	public void regispro(Item item){
		lista.add(item);
		item.setNombres(item.getNombres());
		ordenarIdPro();
	}
	
	
	private void ordenarIdPro() {
		 for(int i=0; i < lista.size(); i++){
		      lista.get(i).setIdpro(i + 1);
		    }
	}
}


