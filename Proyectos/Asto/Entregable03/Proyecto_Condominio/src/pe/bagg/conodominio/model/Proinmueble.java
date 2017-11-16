package pe.bagg.conodominio.model;

import java.util.ArrayList;
import java.util.List;


public class Proinmueble {
		   private List<Item> lista2;

		   public Proinmueble()
		                        {
			lista2=new ArrayList<>();
		  }
			public List<Item> getLista2(){
			return lista2;	
			}
			public void generarid(int idpro){
				 for(Item item: lista2){
				      if( item.getIdpro() == idpro ){
				        lista2.add(item);
						item.setIdpro(item.getIdpro());

				      }
				    }
				ordenarIdPro();
			}
			
			
			private void ordenarIdPro() {
				 for(int i=0; i < lista2.size(); i++){
				      lista2.get(i).setIdpro(i + 1);
				    }
			}
		}



