/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servicios;

import java.util.Scanner;
import entidades.Cuenta;
import java.util.Random;
/**
 *
 * @author derek
 */
public class CuentaServicios{
    
    Scanner leer = new Scanner(System.in).useDelimiter("\n");
    
    public Cuenta crearCuenta(){
        Random random = new Random();
        long dni;
        double saldo;
        int numeroCuenta;
        numeroCuenta = random.nextInt(99999999 - 10000000 + 1) + 10000000;
        System.out.println("Ingresa tu dni: ");
        dni = leer.nextLong();
        System.out.println("Ingresa el saldo con lo que abriras la cuenta: ");
        saldo = leer.nextDouble();
        Cuenta c = new Cuenta(numeroCuenta, dni, saldo);
        consultarDatos(c);
        return c;
    }
    
    public void ingresar(Cuenta c){
        double ingreso;
        double saldo;
        System.out.println("Cuanto deseas ingresar a tu cuenta");
        ingreso = leer.nextDouble();
        saldo = ingreso + c.getSaldo();
        c.setSaldo(saldo);
        consultarSaldo(c);
    }
    
    public void retiro(Cuenta c){
        double retiro;
        double saldo;
        System.out.println("Cuanto deseas retirar a tu cuenta");
        do {
            retiro = leer.nextDouble();
            if(retiro > c.getSaldo()){
                System.out.println("No puedes retirar mas de lo que tienes en tu cuenta.");
            }
        } while(retiro > c.getSaldo());
        saldo = c.getSaldo() - retiro;
        c.setSaldo(saldo);
        consultarSaldo(c);
    }
    
    public void extraccionRapida(Cuenta c){
        double retiro;
        double saldo;
        System.out.println("Cuanto deseas retirar a tu cuenta");
        do {
            retiro = leer.nextDouble();
            if(retiro > c.getSaldo()*0.20){
                System.out.println("Con la Extraccion rapida no puedes retirar mas del 20% de tus fondos.");
            }
        } while(retiro > c.getSaldo()*0.20);
        saldo = c.getSaldo() - retiro;
        c.setSaldo(saldo);
        consultarSaldo(c);
    }
    
    public void consultarSaldo(Cuenta c){
        System.out.println("Tu saldo es: " + c.getSaldo());
    }
    
    public void consultarDatos(Cuenta c){
        System.out.println("Numero de cuenta: " + c.getNumeroCuenta());
        System.out.println("DNI: " + c.getdni());
        System.out.println("saldo: " + c.getSaldo());
    }
}
