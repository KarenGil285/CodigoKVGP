public class Casa{
    String direccion;
    double precio;
    boolean disponible;

    public Casa(String direccion, double precio, boolean disponible) {
        this.direccion = direccion;
        this.precio = precio;
        this.disponible = disponible;
    }
     public String getDireccion() {
        return direccion;
    }
      public double getPrecio() {
        return precio;
    }
    public boolean isDisponible() {
        return disponible;
    }
    public void vender() {
        if (disponible == false){
            System.out.println("La casa fue vendida.");
        }
        else{
             System.out.println("La casa esta disponible.");
        }
        
    }
}