/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package guia;

import static java.lang.Math.abs;
import java.util.Scanner;
import java.util.Random;

/**
 *
 * @author derek
 */
public class EjerciciosPracticos {

    public void Ejercicio1(){
        int num1,num2,suma;
        Scanner leer = new Scanner(System.in);
        
        System.out.println("Ingresa un numero: ");
        num1 = leer.nextInt();
        System.out.println("Ingresa un numero: ");
        num2 = leer.nextInt();
        suma = num1 + num2;
        System.out.println("El resultado de la suma: " + suma);
    }
    
    public void Ejercicio2(){
        String nombre;
        Scanner leer = new Scanner(System.in);
        
        System.out.println("Ingresa tu nombre: ");
        nombre = leer.next();
        System.out.println("El nombre ingresado: " + nombre);
    }
    
    public void Ejercicio3(){
        String frase;
        Scanner leer = new Scanner(System.in);
        
        System.out.println("Ingresa una frase: ");
        frase = leer.nextLine();
        System.out.println(frase.toLowerCase());
        System.out.println(frase.toUpperCase());
    }
    
    
    public void Ejercicio4(){
        int centigrados;
        float fahrenheit;
        Scanner leer = new Scanner(System.in);
        
        System.out.println("Ingresa grados centigrados: ");
        centigrados = leer.nextInt();
        fahrenheit = 32 + (9 * centigrados/5);
        System.out.println("grados Fahrenheit: " + fahrenheit);
    }
    
    public void Ejercicio5(){
        int num;
        Scanner leer = new Scanner(System.in);
        
        System.out.println("Ingresa un numero: ");
        num = leer.nextInt();
        System.out.println("Doble de " + num + " : " + (num * 2));
        System.out.println("Triple de " + num + " : " + (num * 3));
        System.out.println("Raiz cuadrada de " + num + " : " + (Math.sqrt(num)));
    }
    
    public void Ejercicio6(){
        int num;
        Scanner leer = new Scanner(System.in);
        
        System.out.println("Ingresa un numero: ");
        num = leer.nextInt();
        if(num % 2 == 0){
            System.out.println("Numero Par");
        } else {
            System.out.println("Numero impar");
        }
    }
    
    public void Ejercicio7(){
        String frase;
        Scanner leer = new Scanner(System.in);
        
        System.out.println("Ingresa una frase: ");
        frase = leer.next();
        if(frase.toLowerCase().equals("eureka")){
            System.out.println("Mensaje correcto");
        } else {
            System.out.println("Mensaje Incorrecto");
        }
    }
    
    public void Ejercicio8(){
        String frase;
        Scanner leer = new Scanner(System.in);
        
        System.out.println("Ingresa una frase: ");
        frase = leer.nextLine();
        
        if(frase.length() == 8){
            System.out.println("Mensaje correcto");
        } else {
            System.out.println("Mensaje Incorrecto");
        }
    }
    
    public void Ejercicio9(){
        String frase;
        Scanner leer = new Scanner(System.in);
        
        System.out.println("Ingresa una frase: ");
        frase = leer.nextLine();
        
        if(frase.substring(0,1).equals("A")){
            System.out.println("Mensaje correcto");
        } else {
            System.out.println("Mensaje Incorrecto");
        }
    }
    
    public void Ejercicio10(){
        int limite,num,suma;
        Scanner leer = new Scanner(System.in);
        suma = 0;
        System.out.println("Ingresa el limite: ");
        do{
            limite = leer.nextInt();
            if(limite < 1) {
                System.out.println("El limite debe de ser positivo");
            }
        } while(limite < 1);
        
        while(suma < limite){
            System.out.println("Ingresa un numero a sumar: ");
            num = leer.nextInt();
            suma+=num;
        }
        System.out.println("Se supero al limite");
    } 
    
    public void Ejercicio11(){
        int num1,num2,opcion;
        String pregunta = "N";
        Scanner leer = new Scanner(System.in);
        System.out.println("Ingresa un numero: ");
        num1 = leer.nextInt();
        System.out.println("Ingresa un numero: ");
        num2 = leer.nextInt();
        do{
            System.out.println("Menu\n1.Sumar\n2.Restar\n3.Multiplicar\n4.Dividir\n5.Salir");
            opcion = leer.nextInt();
            switch(opcion){
                case 1 -> System.out.println("Suma: " + (num1 + num2));
                case 2 -> System.out.println("Restar: " + (num1 - num2));
                case 3 -> System.out.println("Multiplicar: " + (num1 * num2));
                case 4 -> System.out.println("Dividir: " + (num1 / num2));
                case 5 -> {
                    System.out.println("Desea salir (S/N)?");
                    pregunta = String.valueOf(leer.next().toUpperCase().charAt(0));
                }
                default -> System.out.println("opcion Invalida");
            }
        } while(!pregunta.equals("S"));
    }
    
    public void Ejercicio12(){
        int correctas = 0, incorrectas = 0;
        String cadena;
        Scanner leer = new Scanner(System.in);
        do{
            System.out.println("Ingresa una cadena: ");
            cadena = leer.next().toUpperCase();
            if(cadena.length() <= 5 && "X".equals(cadena.substring(0, 1)) && "O".equals(cadena.substring(cadena.length()-1, cadena.length()))){
                correctas+=1;
                System.out.println("Correcta");
            } else {
                incorrectas+=1;
            }
        }while(!cadena.equals("&&&&&"));
        System.out.println("Correctas: " + correctas);
        System.out.println("Incorrectas: " + incorrectas);
    }
    
    public void Ejercicio13(){
        int num;
        Scanner leer = new Scanner(System.in);
        System.out.println("Ingresa el Tamaño: ");
        num = leer.nextInt();
        for(int i=0;i<num;i++){
            for(int j=0;j<num;j++){
                if(i == 0 || j == 0 || i== num-1 || j== num-1){
                    System.out.print("* ");
                } else {
                    System.out.print("  ");
                }
            }
            System.out.println("");
        }
    }
    
    public void Ejercicio14(){
        int euros;
        String moneda;
        Scanner leer = new Scanner(System.in);
        System.out.println("Cantidad de euros: ");
        euros = leer.nextInt();
        System.out.println("Moneda: ");
        moneda = leer.next();
        cambio(abs(euros), moneda);
    }
    
    public static void cambio(int euros, String moneda){
        switch(moneda.toLowerCase()){
            case "libras" -> System.out.println(euros + " Euros - " + (euros * 0.86) + " Libras");
            case "dolares" -> System.out.println(euros + " Euros - " + (euros * 1.28611) + " Dolares");
            case "yenes" -> System.out.println(euros + " Euros - " + (euros * 129.852) + " Yenes");
            default -> System.out.println("Moneda inorrecta");
        }
    }
    
    public void Ejercicio15(){
        int[] num = new int[100];
        for(int i=0;i<100;i++){
            num[i] = i+1;
        }
        
        for(int i=99;i>=0;i--){
            System.out.println(num[i]);
        }
        
    }
    
    public void Ejercicio16(){
        int n, contador = 0, num;
        int[] vector;
        Scanner leer = new Scanner(System.in);
        System.out.println("Tamaño del vector: ");
        n = leer.nextInt();
        vector = new int[n];
        for(int i=0;i<n-1;i++){
            vector[i] = (int)(Math.random() * 10);
        }
        System.out.println("Numero a buscar: ");
        num = leer.nextInt();
        for(int i=0;i<n;i++){
            if(num == vector[i]){
                System.out.println("Posicion del vector: " + i);
                contador++;
            }
        }
        System.out.println((contador == 0 )? "No se encontro el numero que buscaba.":  "El numero " + num + " se encuentra " + contador + " en el vector");
    }
    
    public void Ejercicio17(){
        int n,uno=0,dos=0,tres=0,cuatro=0,cinco=0;
        int[] vector;
        Scanner leer = new Scanner(System.in);
        Random random = new Random();
        System.out.println("Tamaño del vector: ");
        n = leer.nextInt();
        vector = new int[n];
        for(int i=0;i<n-1;i++){
            vector[i] = (int)(random.nextInt(99999 - 1 + 1) + 1);
        }
        
        for(int i=0;i<n;i++){
            switch(Integer.toString(vector[i]).length()){
                case 1 -> uno++;
                case 2 -> dos++;
                case 3 -> tres++;
                case 4 -> cuatro++;
                case 5 -> cinco++;
            }
        }
        System.out.println("1 digito: " + uno);
        System.out.println("2 digito: " + dos);
        System.out.println("3 digito: " + tres);
        System.out.println("4 digito: " + cuatro);
        System.out.println("5 digito: " + cinco);
    }
    
    public void Ejercicio18(){
        int[][] vector, vectorT;
        vector = new int[4][4];
        vectorT = new int[4][4];
        for(int i=0;i<4;i++){
            for(int j=0;j<4;j++){
                vector[i][j] = (int) (Math.random() * 10);
                vectorT[j][i] = vector[i][j];
            }
        }
        
        for(int i=0;i<4;i++){
            for(int j=0;j<4;j++){
                System.out.print(vector[i][j] + " ");
            }
            System.out.print(" |  ");
            for(int j=0;j<4;j++){
                System.out.print(vectorT[i][j] + " ");
            }
            
            System.out.println("");
        }
    }
    
    public void Ejercicio19(){
        int[][] vector, vectorT;
        vector = new int[4][4];
        vectorT = new int[4][4];
        boolean simetrica = true;
        Scanner leer = new Scanner(System.in);
        System.out.println("Llena la matriz ");
        for(int i=0;i<3;i++){
            for(int j=0;j<3;j++){
                vector[i][j] = leer.nextInt();
                vectorT[j][i] = vector[i][j];
            }
        }
        
        for(int i=0;i<3;i++){
            for(int j=0;j<3;j++){
                System.out.print(vector[i][j] + " ");
            }
            System.out.print(" |  ");
            for(int j=0;j<3;j++){
                System.out.print(vectorT[i][j] + " ");
            }
            System.out.println("");
        }
        
        for(int i=0;i<3;i++){
            for(int j=0;j<3;j++){
                if(vector[i][j] != vectorT[i][j]){
                    simetrica = false;
                    break; 
                }
            }
            System.out.println("");
        }
        System.out.print((simetrica == true)? "Si es simetrica": "No es simetrica");
    }
    
    public void Ejercicio20(){
        int[][] vector;
        int num,diagonalP = 0,diagonalS = 0;
        int[] columnas = new int[3];
        int[] filas = new int[3];
        vector = new int[3][3];
        boolean magica; 
        Scanner leer = new Scanner(System.in);
        System.out.println("Llena la matriz ");
        for(int i=0;i<3;i++){
            columnas[i] = 0;
            filas[i] = 0;
            for(int j=0;j<3;j++){
                do{
                    num = leer.nextInt();
                    System.out.println((num < 1 || num > 9)? "Numero equivocado":"");
                }while(num < 1 || num > 9);
                vector[i][j] = num;
            }
        }
        
        for(int i=0;i<3;i++){
            for(int j=0;j<3;j++){
                System.out.print(vector[i][j] + " ");
            }
            System.out.println("");
        }
        
        for(int i=0;i<3;i++){
            for(int j=0;j<3;j++){
                filas[i] += vector[i][j];
                columnas[i] += vector[j][i];
                if(i==j){
                    diagonalP += vector[i][j];
                }
            }
        }
        
        int j=2;
        for(int i=0;i<3;i++){
            diagonalS+= vector[i][j];
            j--;
        }
        
        magica = (diagonalP == diagonalS);
        int i=0;
        while(i<3 && magica == true){
            magica= (filas[i] == columnas[i]);
            i++;
        }
        
        System.out.print((magica == true)? "Si es Magica": "No es Magica");
    }
    
    public void Ejercicio21(){
        int[][] m,p;
        m = new int[10][10];
        p = new int[3][3];
        for(int i=0;i<10;i++){
            for(int j=0;j<10;j++){
                m[i][j] = (int)(Math.random() * 100);
            }
        }
        
        for(int i=0;i<3;i++){
            for(int j=0;j<3;j++){
                p[i][j] = (int)(Math.random() * 100);
            }
        }
        
        for(int i=0;i<10;i++){
            for(int j=0;j<10;j++){
                System.out.print((String.valueOf(m[i][j]).length() == 1)?m[i][j] + "  " :m[i][j] + " ");
                // System.out.print(m[i][j] + " " );
            }
            System.out.print(" | ");
            for(int j=0;j<3;j++){
                if(i<3){
                    System.out.print((String.valueOf(p[i][j]).length() == 1)?p[i][j] + "  " :p[i][j] + " ");
                }
            }
            System.out.println("");
        }
        
        
        System.out.println((buscar(m,p))? "SI se encuentra": "No se encuentra");
    }
    
    public static boolean buscar(int[][] m, int[][]p){
        for(int i=0;i< 7;i++){
            for(int j=0;j< 7;j++){
                boolean esta = true;
                for(int y=0;y < 3;y++){
                    for(int x=0;x < 3;x++){
                        if(m[i+y][j+x] != p[y][x]){
                            esta = false;
                            break;
                        }
                    }
                    if(!esta){
                        break;
                    }
                }
                if(esta){
                    return true;
                }
            }
        }
        return false;
    }
}
