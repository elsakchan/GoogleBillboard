public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup()  
{            
    //your code here
  String n = (e + "").substring(2);

    for(int i = 0; i < n.length()-10; i++) {
      double num = Double.parseDouble(n.substring(i,i+10));
      if(isPrime(num)) {
        System.out.println("answer : " + num);
        break;
      }
    }

}  
public void draw()  
{   
  //not needed for this assignment
}  
public boolean isPrime(double dNum)  
{   
    //your code here 
     if (dNum <= 1) return false;
    if (dNum == 2) return true;
    if (dNum % 2 == 0) return false;
    double m = (double) Math.sqrt(dNum);

    for (int i = 3; i <= m; i+=2)
      if (dNum % i == 0)
        return false;

    return true;  
} 
