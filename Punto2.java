public class Punto2{
 public static void asterisco(int n){
    for(int i=1;i<=n;i++){
      System.out.print("*");
     }
  }
 public static void main(String [] args){
   int n;
   int z;
   n=2;
   z=1;
   for(int i=1;i<=n;i++){
      asterisco(z);
      z=z+2;
      System.out.println(" ");
     }
 } 
}