/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entidades;

/**
 *
 * @author derek
 */
public class Cuenta {
    private Integer numeroCuenta;
    private Long dni;
    private Double saldo;

    public Cuenta() {
    }

    public Cuenta(Integer numeroCuenta, Long dni, Double saldo) {
        this.numeroCuenta = numeroCuenta;
        this.dni = dni;
        this.saldo = saldo;
    }
    
    public void setNumeroCuenta(Integer numeroCuenta){
        this.numeroCuenta = numeroCuenta;
    }
    
    public void setDni(Long dni){
        this.dni = dni;
    }
    
    public void setSaldo(Double saldo){
        this.saldo = saldo;
    }
    
    public Integer getNumeroCuenta(){
        return numeroCuenta;
    }
    
    public Long getdni(){
        return dni;
    }
    
    public Double getSaldo(){
        return saldo;
    }
}
