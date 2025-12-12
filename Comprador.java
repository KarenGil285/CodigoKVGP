public class Comprador{
    String nombre;
    double dinero;
    double deuda;

    public Comprador(String nombre, double dinero, double deuda){
        this.nombre = nombre;
        this.dinero = dinero;
        this.deuda = deuda;
    }
     public double getDinero() {
        return dinero;
    }
    public double getDeuda() {
        return deuda;
    }
    public void recibirPrestamo(double montoDeuda) {
        deuda=deuda+montoDeuda;
        System.out.println(nombre + " recibió préstamo. Deuda total: " + deuda);
    }
      
    public void visitarCasas(Casa[] listaCasas) {
        System.out.println(nombre + " está visitando casas...");
        for (int i = 0; i < 2; i++) {
            System.out.println( "* Casa en " + listaCasas[i].getDireccion() 
                    + " por " + listaCasas[i].getPrecio());
        }
    }

     public void intentarComprar(Casa casa, Banco banco) {
        System.out.println(nombre + " intenta comprar la casa en " + casa.getDireccion());

        if (!casa.isDisponible()) {
            System.out.println("La casa ya fue vendida.");
        }
        else{
        while (dinero < casa.getPrecio()) {
            double falta = casa.getPrecio() - dinero;
            System.out.println("Faltan " + falta + " para comprar la casa.");

            double pedido = banco.prestarDinero(this,falta);
            if (pedido == 0) {
                System.out.println("No se puede completar la compra.");
            }
            else{
                dinero=dinero+pedido;
            }
        }

        dinero = dinero-casa.getPrecio();
        System.out.println("Compra exitosa. Dinero restante: " + dinero);
        
        }    
    }
    
    
}