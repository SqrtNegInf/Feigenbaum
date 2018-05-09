public class SquaredvsMultiplied
{
  public static void main(String[] args)
  {

    double x = .05;
    double y = 1.4;

    for (int i = 0; i < 100000; i++) {
        x = y - x * x;
        if ((x*x) != Math.pow(x,2)) 
            System.out.println("i = " + i + " x = " + x);
    }
  }
}
