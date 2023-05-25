/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package guia;

import java.util.Arrays;
import java.util.Scanner;

/**
 *
 * @author derek
 */
public class EjerciciosExtras {
    public void Ejercicio1(){
        int minutos;
        Scanner leer = new Scanner(System.in);
        
        System.out.println("Ingresa un numero: ");
        minutos = leer.nextInt();
        System.out.println("Dias: " + (Math.floorDiv(Math.floorDiv(minutos, 60), 24)));
        System.out.println("horas: " + (Math.floorDiv(minutos, 60) - 24));
    }
    
    public void Ejercicio2(){
        String a="A",b="B",c="C",d="D",aux;
        
        System.out.println("Valores iniciales:");
        System.out.println("A: " + a);
        System.out.println("B: " + b);
        System.out.println("C: " + c);
        System.out.println("D: " + d);
        
        aux=b;
        b=c;
        c=a;
        a=d;
        d=aux;
        
        System.out.println("Valores cambiados:");
        System.out.println("A: " + a);
        System.out.println("B: " + b);
        System.out.println("C: " + c);
        System.out.println("D: " + d);  
    }
    
    public void Ejercicio3(){
        String letra;
        Scanner leer = new Scanner(System.in);
        
        System.out.println("Ingresa una letra: ");
        letra = String.valueOf(leer.next().charAt(0)).toLowerCase();
        if(letra.equals("a") || letra.equals("e") || letra.equals("i") || letra.equals("o") || letra.equals("u")){
            System.out.println("Vocal");
        }else{
            System.out.println("No es vocal");
        }
    }
    
    public void Ejercicio4(){
        int num;
        Scanner leer = new Scanner(System.in);
        
        System.out.println("Ingresa un numero del 1-10: ");
        num = leer.nextInt();
        switch(num){
            case 1 -> System.out.println("I");
            case 2 -> System.out.println("II");
            case 3 -> System.out.println("III");
            case 4 -> System.out.println("IV");
            case 5 -> System.out.println("V");
            case 6 -> System.out.println("VI");
            case 7 -> System.out.println("VII");
            case 8 -> System.out.println("VIII");
            case 9 -> System.out.println("IX");
            case 10 -> System.out.println("X");
            default -> System.out.println("Numero no valido");
        }
    }
    
    public void Ejercicio5(){
        String socio;
        int valor;
        Scanner leer = new Scanner(System.in);
        
        System.out.println("Ingresa tu tipo de socio: A B o C ");
        do{  
            socio = String.valueOf(leer.next().charAt(0)).toUpperCase();
            System.out.println((!socio.equals("A") && !socio.equals("B") && !socio.equals("C")) ? "Clase de socio inválido" : "");
        } while(!socio.equals("A") && !socio.equals("B") && !socio.equals("C"));
        System.out.println("Ingresa el valor del tratamiento: ");
        valor = leer.nextInt();
        switch(socio){
            case "A" -> System.out.println("Valor de tu tratamiento socio A: " + (valor * 0.50));
            case "B" -> System.out.println("Valor de tu tratamiento socio B:" + (valor * 0.65));
            case "C" -> System.out.println("Valor de tu tratamiento socio B:" + (valor));
        }
    }
    
    public void Ejercicio6(){
        int n,debajo=0, contador=0;
        float altura,sumaG=0,sumaD=0;
        Scanner leer = new Scanner(System.in);
        
        System.out.println("Cantidad de alturas: ");
        n = leer.nextInt();
        do{  
            System.out.println("Ingresa la altura: ");
            altura = leer.nextFloat();
            sumaG+=altura;
            sumaD = (altura < 1.60)? sumaD+altura: sumaD;
            debajo = (altura < 1.60)? debajo+1: debajo;
            contador++;
        } while(contador<n);
        System.out.println("promedio General: " + (sumaG/n));
        System.out.println("promedio debajo 1.60m: " + (sumaD/debajo));
    }
    
    public void Ejercicio7(){
        int n,num,c=0,minimo=1000000000,maximo=0,suma=0;
        Scanner leer = new Scanner(System.in);
        
        System.out.println("Cantidad de numeros: ");
        do{
            n = leer.nextInt();
            System.out.println((n<0) ? "Escribe un numero valido":"");
        }while(n<0);
        
        do{  
            System.out.println("Ingresa un numero: ");
            do {
                num = leer.nextInt();
                System.out.println((num<0) ? "Escribe un numero valido":"");
            }while(num<0);
            minimo = (num<minimo)? num:minimo; 
            maximo = (num>maximo)? num:maximo;
            suma += num;
            c++;
        } while(c<n);
        
        System.out.println("Numero mayor: " + maximo);
        System.out.println("Numero menor: " + minimo);
        System.out.println("promedio: " + (suma/n));
    }
    
    public void Ejercicio8(){
        int num,c=0,p=0,i=0;
        Scanner leer = new Scanner(System.in);
        
        do{  
            System.out.println("Ingresa un numero: ");
            num = leer.nextInt();
            if(num%5!=0){
                c = (num>0)? c+1:c;
                p = (num>0 && num%2==0)? p+1:p;
                i = (num>0 && num%2!=0)? i+1:i;
            }
        } while(num%5 != 0);
        
        System.out.println("Cantidad: "+c);
        System.out.println("pares: "+p);
        System.out.println("impares: "+i);
    }
    
    public void Ejercicio9(){
        int num1,num2,residuo,cociente=0;
        Scanner leer = new Scanner(System.in);
        
        System.out.println("Ingresa un numero: ");
        num1 = leer.nextInt();
        
        System.out.println("Ingresa un numero: ");
        num2 = leer.nextInt();
        
        while(num1 > num2){  
            num1-=num2;
            cociente++;
        }
        
        System.out.println("cociente: " + cociente);
        System.out.println("residuo: " + num1);
    }
    
    public void Ejercicio10(){
        int num,mul;
        Scanner leer = new Scanner(System.in);
        
        mul = ((int)(Math.random()*10)) * ((int)(Math.random()*10));
        System.out.println("Mul: "+mul);
        do{
            System.out.println("Adivina: ");
            num = leer.nextInt();
            System.out.println((num==mul) ? "Correcto":"Incorrecto intenta de nuevo");
        }while(num != mul);
    }
    
    public void Ejercicio11(){
        int num,contador=0;
        Scanner leer = new Scanner(System.in);
        
        System.out.println("Adivina: ");
        num = leer.nextInt();
        do{
            num = Math.floorDiv(num, 10);
            contador++;
        }while(num != 0);
        System.out.println("Cantidad: " + contador);
    }
    
    public void Ejercicio12(){
        for(int i=0;i<=9;i++){
            for(int j=0;j<=9;j++){
                for(int k=0;k<=9;k++){
                    String uno = (i == 3) ? "E" : String.valueOf(i);
                    String dos = (j == 3) ? "E" : String.valueOf(j);
                    String tres = (k == 3) ? "E" : String.valueOf(k);
                    System.out.println(uno + "-" + dos + "-" + tres);
                }
            }
        }
    }
    
    public void Ejercicio13(){
        int n;
        Scanner leer = new Scanner(System.in);
        System.out.println("Adivina: ");
        n = leer.nextInt();
        for(int i=0;i<=n-1;i++){
            for(int j=0;j<=i;j++){
                System.out.print(j+1);
            }
            System.out.println("");
        }
    }
    
    public void Ejercicio14(){
        int n,m,edad,suma;
        Scanner leer = new Scanner(System.in);
        System.out.println("familias: ");
        n = leer.nextInt();
        for(int i=0;i<=n-1;i++){
            System.out.println("Miemros: ");
            m = leer.nextInt();
            suma=0;
            for(int j=0;j<=m-1;j++){
                System.out.println("Edades: ");
                edad = leer.nextInt();
                suma+=edad;
            }
            System.out.println("Edad promedio de familia "+(i+1)+": "+(suma/m));
        }
    }
    
    public void Ejercicio15(){
        int num1,num2,opcion;
        Scanner leer = new Scanner(System.in);
        System.out.println("Ingresa un numero: ");
        num1 = leer.nextInt();
        System.out.println("Ingresa un numero: ");
        num2 = leer.nextInt();
        System.out.println("Menu\n1.Sumar\n2.Restar\n3.Multiplicar\n4.Dividir");
        opcion = leer.nextInt();
        switch(opcion){
            case 1 -> System.out.println("Suma: " + sumar(num1,num2));
            case 2 -> System.out.println("Restar: " + restar(num1,num2));
            case 3 -> System.out.println("Multiplicar: " + multiplicar(num1,num2));
            case 4 -> System.out.println("Dividir: " + dividir(num1,num2));
            default -> System.out.println("opcion Invalida");
        }
    }
    
    public static int sumar(int num1, int num2){
        return num1 + num2;
    }
    
    public static int restar(int num1, int num2){
        return num1 - num2;
    }
    
    public static int multiplicar(int num1, int num2){
        return num1 * num2;
    }
    
    public static float dividir(int num1, int num2){
        return num1 / num2;
    }
    
    public void Ejercicio16(){
        String nombre,respuesta;
        int edad;
        Scanner leer = new Scanner(System.in);
        do{
            System.out.println("Ingrese su nombre: ");
            nombre = leer.next().toUpperCase();
            System.out.println("Ingrese su edad: ");
            edad = leer.nextInt();
            System.out.println((edad >= 18) ? (nombre + " Es mayor de edad"): (nombre + " No es mayor de edad"));
            System.out.println("Quiere continuar (SI/NO)?: ");
            respuesta = leer.next().toUpperCase();
        }while(!respuesta.equals("NO"));
        
        
    }
    
    public void Ejercicio17(){
        int num;
        Scanner leer = new Scanner(System.in);
        System.out.println("Ingrese su edad: ");
        num = Math.abs(leer.nextInt());
        System.out.println("Es primo: " + ((primo(num))? "Verdadero": "Falso"));
    }
    
    public static boolean primo(int num){
        int contador=0;
        for(int i=1;i<=num;i++){
            contador = (num % i == 0)? contador + 1: contador;  
            if(contador > 2){
                return false;
            }
        }
        return true;
    }
    
    public void Ejercicio18(){
        int num,n,suma=0;
        Scanner leer = new Scanner(System.in);
        System.out.println("Ingrese el tamaño: ");
        n = leer.nextInt();
        int[] arreglo = new int[n];
        for(int i=0;i<n;i++){   
            System.out.println("Ingrese un numero para agregar al vector: ");
            num = leer.nextInt();
            arreglo[i] = num;
        }
        
        for(int i=0;i<n;i++){   
            System.out.print(arreglo[i] + " ");
            suma += arreglo[i];
        }
        
        System.out.println("\nSuma: " + suma);
    }
    
    public void Ejercicio19(){
        int[] arreglo1,arreglo2;
        boolean iguales=true;
        arreglo1 = new int[5];
        arreglo2 = new int[5];
        for(int i=0;i<5;i++){   
            arreglo1[i] = (int)(Math.random() * 10);
            arreglo2[i] = (int)(Math.random() * 10);
        }
        
        for(int i=0;i<5;i++){   
            iguales=(arreglo1[i] == arreglo2[i]);
            if(iguales == false){
                break;
            }
        }
        
        System.out.println("Son iguales: " + ((iguales)? "Verdadero": "falso"));
    }
    
    public void Ejercicio20(){
        float[] arreglo;
        arreglo = new float[5];
        rellenar(arreglo);
        imprimir(arreglo,5);
    }
    
    public static void rellenar(float[] arreglo){
        for(int i=0;i<5;i++){   
            arreglo[i] = (int)(Math.random() * 10);
        }
    }
    
    public static void imprimir(float[] arreglo,int n){
        for(int i=0;i<n;i++){   
            System.out.print(arreglo[i] + " ");
        }
    }
    
    public void Ejercicio21(){
        float nota;
        int n=3,a=0,r=0;
        float[] arreglo;
        arreglo = new float[n];
        Scanner leer = new Scanner(System.in);
        for(int i=0;i<n;i++){
            System.out.println("Ingresa tus notan en este orden:\n1.Primer trabajo practico\n2.Segundo trabajo practico\n3.Primer integrador\n4.Segundo integrador");
            float calificacion=0;
            for(int j=0;j<4;j++){
                nota = leer.nextInt();
                switch(j){
                    case 0 -> calificacion+=(nota*0.10);
                    case 1 -> calificacion+=(nota*0.15);
                    case 2 -> calificacion+=(nota*0.25);
                    case 3 -> calificacion+=(nota*0.50);
                }
                arreglo[i] = calificacion;
                a=(calificacion >= 7)? a+1:a;
                r=(calificacion < 7)? r+1:r;
            }
        }
         imprimir(arreglo,n);
         System.out.println("\nAprovados: " + a);
         System.out.println("Reprovados: " + r);
    }
    
    public void Ejercicio22(){
        int n=3,m=3,suma=0;
        int[][] arreglo;
        arreglo = new int[n][m];
        for(int i=0;i<n;i++){
            for(int j=0;j<m;j++){
                arreglo[i][j] = (int)(Math.random()*10);
                System.out.print(arreglo[i][j] + " ");
                suma+=arreglo[i][j];
            }
            System.out.println();
        }
        System.out.println("Suma: " + suma);
    }
    
    public void Ejercicio23(){
        int n=20,m=20;
        int fila;
        String[][] arreglo;
        String[] palabras = new String[5];
        String palabra;
        arreglo = new String[n][m];
        Scanner leer = new Scanner(System.in);
        for(int i=0;i<5;i++){
            System.out.println("Ingrese una palabra de 3-5 letras: ");
            do{ 
                palabra = leer.next().toUpperCase();
                System.out.println((palabra.length()<3 || palabra.length() > 5) ? "Palabra de 3-5 letras": "");
            }while(palabra.length()<3 || palabra.length() > 5);
            palabras[i]= palabra;
        }
        
        for(int i=0;i<n;i++){
            for(int j=0;j<m;j++){
                arreglo[i][j] = "";
            }
        }
        
        for(int i=0;i<5;i++){
            do{   
                fila = (int)(Math.random()*20);
            }while(!arreglo[fila][0].equals(""));
            for(int j=0;j<palabras[i].length();j++){
                arreglo[fila][j] = palabras[i].substring(j, j+1);
            }
        }
        
        for(int i=0;i<n;i++){
            for(int j=0;j<m;j++){
                arreglo[i][j] = (arreglo[i][j].equals(""))? String.valueOf((int)(Math.random()*9)): arreglo[i][j];
                System.out.print(arreglo[i][j] + " ");
            }
            System.out.println("");
        }    
    }
    
    public void Ejercicio24(){
        int n = 10; // Cantidad de números de Fibonacci a generar

        // Crear un vector para almacenar los números de Fibonacci
        int[] fibonacci = new int[n];

        // Generar los números de Fibonacci y almacenarlos en el vector
        for (int i = 0; i < n; i++) {
            if (i < 2) {
                fibonacci[i] = i;
            } else {
                fibonacci[i] = fibonacci[i - 1] + fibonacci[i - 2];
            }
        }

        // Imprimir el vector con los números de Fibonacci
        System.out.println("Vector de Fibonacci: " + Arrays.toString(fibonacci));
    }
}
