/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package guia;

import java.util.Scanner;


/**
 *
 * @author derek
 */

public class Ejercicios {

    public void ejercicio1(){
        int numero;
        boolean bandera;
        char letra;
        String palabra;
        float decimal;
        double decimalMayor;
        
        System.out.println("Hello World!");
    }
    
    public void ejercicio2(){
        int numero = 1;
        boolean bandera = true;
        char letra = 'd';
        String palabra = "Hola";
        float decimal = 1;
        double decimalMayor = 0.1;
        
        System.out.println(palabra);
    }
    
    public void ejercicio3() {
        int suma = 2+4;
        float division = 10/3;
        boolean bandera = 4 > 8;
        System.out.println(suma);
    }
    
    public void ejercicio4(){
        int edad = 22;
        String nombre = "Derek";
        System.out.println("Hola " + nombre + " tienes " + edad);
    }
    
    public void ejercicio5(){
        Scanner leer = new Scanner(System.in);
        boolean bandera;
        double numero;
        char letra;
        
        System.out.println("Ingresa tu inicial");
        letra = leer.next().charAt(0);
        System.out.println("Ingresa tu edad");
        numero = leer.nextDouble();
        System.out.println("Ingresa verdad o falso");
        bandera = leer.nextBoolean();
        System.out.println(letra + " " + numero + " " + bandera);
    }
    
    public void ejercicio6(){
        int num1,num2;
        
        Scanner leer = new Scanner(System.in);
        System.out.println("Ingresa un numero");
        num1 = leer.nextInt();
        System.out.println("Ingresa un numero");
        num2 = leer.nextInt();
        if (num1 > 25 && num2 > 25) {
            System.out.println("Ambos son mayores que 25");
        } else if (num1 > 25 || num2 > 25) {
            System.out.println("solo uno es mayor que 25");
        } else {
            System.out.println("Ninguno es mayor que 25");
        }
    }
    
    public void ejercicio7(){
        int tipoMotor;
        Scanner leer = new Scanner(System.in);
        System.out.println("Ingresa un numero");
        tipoMotor = leer.nextInt();
        switch(tipoMotor){
            case 1 -> System.out.println("La bomba es una bomba de agua.");
            case 2 -> System.out.println("La bomba es una bomba de gasolina.");
            case 3 -> System.out.println("La bomba es una bomba de hormigon.");
            case 4 -> System.out.println("La bomba es una bomba de pasta alimenticia.");
            default -> System.out.println("No existe un valor valido para tipo de bomba");
        }
    }
    
    public void ejercicio8(){
        int nota = -1;
        Scanner leer = new Scanner(System.in);
        
        System.out.println("Ingresa un numero");
        while(nota < 0 || nota > 10) {
            nota = leer.nextInt();
        }
        System.out.println("Nota: " + nota);
    }
    
    public void ejercicio9(){
        int num, contador = 0, suma = 0;
        Scanner leer = new Scanner(System.in);
        System.out.println("Ingresa 20 numeros o hasta que ingrese un 0");
        do {
            System.out.println("num " + (contador + 1) + ":");
            num = leer.nextInt();
            if (num > 0){
                suma+=num;
            }
            contador++;
        } while( contador < 20 && num != 0);
        
        if (num == 0) {
            System.out.println("Se capturo un numero 0");
        }
        System.out.println("Suma: " + suma);
    }
    
    public void ejercicio10(){
        int num, contador = 0;
        Scanner leer = new Scanner(System.in);
        System.out.println("Ingresa un numeros entre 1 y 20");
        while ( contador < 4){
            do {
                num = leer.nextInt();
                if ( num < 1 || num > 20 ){
                    System.out.println("Numero invalido");
                }
            } while (num < 1 || num > 20);
            System.out.print(num + " ");
            for(int i=0; i<num;i++){
                System.out.print("*");
            }
            System.out.println("");
            contador++;
        }
    }
    
    public void ejercicio11(){
        String frase = "";
        String letra;
        Scanner leer = new Scanner(System.in);
        System.out.println("Ingresa caracteres hasta un . para finalizar");
        do{
            do{
                letra = leer.nextLine();
                if(letra.length() != 1){
                    System.out.println("Ingresa un solo caracter");
                }
            }while(letra.length() != 1);
            frase = frase.concat(String.valueOf(letra));
        }while( !".".equals(letra));
        frase = procesarCadena(frase);
        System.out.println(frase);
    }
    
    public static String procesarCadena(String cadena){
        return cadena.replace("a", "@").replace("e", "#").replace("i", "$").replace("o", "%").replace("u", "*");
    }
}
