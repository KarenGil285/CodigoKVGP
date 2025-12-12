public class Banco{
    String nombre;
    double fondos;
    double tasaInteres;

    public Banco(String nombre, double fondos, double tasaInteres){
        this.nombre=nombre;
        this.fondos=fondos;
        this.tasaInteres=tasaInteres;
    }

    public double prestarDinero(Comprador comprador1, double cantidad){
        System.out.println(nombre + " recibe solicitud de préstamo por " + cantidad);
        if(cantidad<=0){
            System.out.println(" cantidad inválida");
            return 0;
        }
        if (fondos<cantidad){
           System.out.println("El banco no tiene suficientes fondos");
           return 0;
        }
        fondos=fondos-cantidad;
        double deudaGenerada=cantidad+(cantidad*tasaInteres);
        comprador1.recibirPrestamo(deudaGenerada);
        System.out.println("El prestamo fue aprobado, la deuda es: "+deudaGenerada);
        return cantidad;
    }

}