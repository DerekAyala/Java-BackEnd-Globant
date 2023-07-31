/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit5TestClass.java to edit this template
 */

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.BeforeAll;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;
import testconjunit.entities.Rectangulo;
import testconjunit.services.RectanguloService;

/**
 *
 * @author derek
 */
public class RectanguloTest {
    
    public RectanguloTest() {
    }
    
    RectanguloService rs;
    
    @BeforeAll
    public static void setUpClass() {
    }
    
    @AfterAll
    public static void tearDownClass() {
    }
    
    @BeforeEach
    public void setUp() {
        rs = new RectanguloService();
    }
    
    @AfterEach
    public void tearDown() {
    }
    
    @Test
    public void deberiaInicializarConColor(){
        assertNotNull(new Rectangulo(10,10).getColor());
    }
    
    @Test
    public void deberiaCalcularArea(){
        assertEquals(100, rs.calcularArea(new Rectangulo(10, 10)), 0);
        assertEquals(20, rs.calcularArea(new Rectangulo(4, 5)), 0);
        assertEquals(10, rs.calcularArea(new Rectangulo(1, 10)), 0);
    }
    
    @Test
    public void deberiaCalcularPerimetro(){
        assertEquals(40, rs.calcularPerimetro(new Rectangulo(10, 10)), 0);
        assertEquals(18, rs.calcularPerimetro(new Rectangulo(4, 5)), 0);
        assertEquals(22, rs.calcularPerimetro(new Rectangulo(1, 10)), 0);
    }
    
    @Test
    public void deberiaActivasODesactivar(){
        Rectangulo r = new Rectangulo(5,5);
        assertTrue(r.isActivo());
        r.setActivo(false);
        assertFalse(r.isActivo());
    }
}
