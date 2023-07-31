/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package testconjunit.services;

import testconjunit.entities.Rectangulo;

/**
 *
 * @author derek
 */
public class RectanguloService {
    public double calcularArea(Rectangulo r){
        return r.getAncho() * r.getLargo();
    }
    
    public double calcularPerimetro(Rectangulo r){
        return 2*(r.getAncho() + r.getLargo());
    }
}
