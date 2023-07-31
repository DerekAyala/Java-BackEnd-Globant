/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servicios;
import entidades.Cadena;
import java.util.Scanner;
/**
 *
 * @author derek
 */
public class CadenaServicios {
    
    Scanner leer = new Scanner(System.in).useDelimiter("\n");
    
    public Cadena crearCadena(){
        Cadena c = new Cadena();
        String frase;
        System.out.println("Ingrese una frase: ");
        frase = leer.next();
        c.setFrase(frase);
        c.setLongitud(frase.length());
        return c;
    }
    
    public void mostrarVocales(Cadena c){
        int vocalesCantidad = 0;
        // String[] vocales = {"a","e","i","o","u"};
                
        for (int i = 0; i < c.getLongitud(); i++) {
            String letra = c.getFrase().substring(i, i+1).toLowerCase();
            if(letra.equals("a") || letra.equals("e") || letra.equals("i") || letra.equals("o") || letra.equals("u")){
                vocalesCantidad++;
            }
        }
        System.out.println("\nCantidad de vocales: " + vocalesCantidad);
    }
    
    public void invertirFrase(Cadena c){
        for (int i = c.getLongitud()-1; i >= 0; i--) {
            System.out.print(c.getFrase().substring(i, i+1));
            System.out.print(" | ");
        }
        System.out.println();
    }
    
    public void vecesRepetido(Cadena c){
        int letraRepetida = 0;
        String letra;
        System.out.println("Ingresa una letra a buscar");
        do {            
            letra = leer.next();
            if(letra.length() != 1){
                System.out.println("Solo es una letra lo que debes ingresar");
            }
        } while (letra.length() != 1);
                
        for (int i = 0; i < c.getLongitud(); i++) {
            if(c.getFrase().substring(i, i+1).equals(letra)){
                letraRepetida++;
            }
        }
        System.out.println("La letra " + letra + " se repite: " + letraRepetida);    
    }
    
    public void compararLongitud(Cadena c){
        String frase;
        System.out.println("Ingrese otra frase para comparar la longitud");
        frase = leer.next();
        System.out.println((c.getLongitud() > frase.length())? "La Frase ingresada es mas corta": (c.getLongitud() < frase.length())? "La frase ingresada es mas larga":"Las frases son del mismo tamaño");
    }
    
    public void unirFrases(Cadena c){
        String frase;
        System.out.println("Ingrese otra frase para unirla: ");
        frase = leer.next();
        c.setFrase(c.getFrase() + " " + frase);
        System.out.println("Frase nueva: " + c.getFrase());
    }
    
    public void reemplazar(Cadena c){
        String letra;
        System.out.println("Ingresa una letra a Reemplazar");
        do {            
            letra = leer.next();
            if(letra.length() != 1){
                System.out.println("Solo es una letra lo que debes ingresar");
            }
        } while (letra.length() != 1);
        
        String reemplazo;
        System.out.println("Ingresa la letra que va a Reemplazar");
        do {            
            reemplazo = leer.next();
            if(reemplazo.length() != 1){
                System.out.println("Solo es una letra lo que debes ingresar");
            }
        } while (reemplazo.length() != 1);
        String frase = c.getFrase().replaceAll(letra, reemplazo);
        c.setFrase(frase);
        System.out.println("La nueva frase es : " + c.getFrase());    
    }
}
