public class Mundo{
	public static void main(String[] args) {
		Banco banco1 = new Banco("BancoCentral", 20000, 0.05);
        Comprador comprador1 = new Comprador("Luis", 5000,0);
		Comprador comprador2 = new Comprador("Karen", 3000,0);
        Casa casa1 = new Casa("Avenida 10", 3000, true);
		Casa casa2= new Casa("Calle73", 5000,true);
		Casa casa3=new Casa("Carrera13", 4000, false);
        comprador1.visitarCasas(new Casa[]{casa1,casa2,casa3});
        comprador1.intentarComprar(casa1, banco1);
		comprador2.visitarCasas(new Casa[]{casa1,casa2,casa3});
		comprador2.intentarComprar(casa2, banco1);
		comprador2.intentarComprar(casa3,banco1);


    }
}
