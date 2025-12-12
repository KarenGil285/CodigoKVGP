import java.util.Scanner;
public class Taller3_2{
    public static int mayor(int a, int b){
        if (a>b){
            return a;
        }
        else{
            if(a<b){
                return b;
            }
            else{
                return 0;
            }
        }
        
    }
    public static int menor(int a, int b){
        if (a>b){
            return b;
        }
        else{
            if(a<b){
                return a;
            }
            else{
                return 0;
            }
        }
        
    }
    public static long factorial(int n){
      long r=1;
      for(int i=1;i<=n;i++){
        r=r*i;
      }
      return r;
        
    }
    public static void main(String [] args){
        Scanner numero = new Scanner(System.in);
		int x=numero.nextInt();
		int z=numero.nextInt();
        int a=mayor(x,z);
        int b=menor(x,z);
        if (a>b){
            int d=a-b;
            long c= ((factorial(a)) / (factorial(d)*factorial(b)));
            long p= ((factorial(a)) / factorial(d));
            System.out.println("La combinatoria es igual: "+c);
            System.out.println("La permutación es igual: "+p);
        }
        else{
            int d=z-x;
            long c= ((factorial(x))/(factorial(d)*(factorial(z))));
            long p= ((factorial(x))/(factorial(d)));
            System.out.println("La combinatoria es igual: "+c);
            System.out.println("La permutación es igual: "+p);
        }
    }
}

