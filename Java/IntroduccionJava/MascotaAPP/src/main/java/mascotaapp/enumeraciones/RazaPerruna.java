/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Enum.java to edit this template
 */
package mascotaapp.enumeraciones;

/**
 *
 * @author derekayala
 */
public enum RazaPerruna {
    BEAGLE(1,"Beagle"), COCKER(2,"Beagle"), PITBULL(3,"Beagle"), BORDER_COLLIE(4,"Beagle");
    private Integer codigo;
    private String valor;
    
    private RazaPerruna(Integer codigo, String valor){
        this.codigo = codigo;
        this.valor = valor;
    }

    public Integer getCodigo() {
        return codigo;
    }

    public void setCodigo(Integer codigo) {
        this.codigo = codigo;
    }

    public String getValor() {
        return valor;
    }

    public void setValor(String valor) {
        this.valor = valor;
    }
    
    
}
