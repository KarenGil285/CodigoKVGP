import java.util.Scanner;
public class Taller3_1{
	public static void factoresPrimos(int n){
		int i=2;
		while (n>1){
			if (n%i==0){
				System.out.println(i);
				n/=i;
			}else{
				i=i+1;
			}
		}
	}
  	public static void main(String [] args){
		Scanner numero = new Scanner(System.in);
		int x=numero.nextInt();
		if(x<=1){
			System.out.println(x);
		}else{
			factoresPrimos(x);
		}
	}

}