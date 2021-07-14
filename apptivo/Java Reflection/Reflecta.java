 import java.lang.Class;
import java.lang.reflect.*;


class Reflecta {
  public static void main(String[] args) 
  {
    try {

      // create an object of Dog
      Doga d1 = new Doga();

      // create an object of Class
      // using getClass()
      Class obj = d1.getClass();

      // using object of Class to
      // get all the declared methods of Dog
      Method[] methods = obj.getDeclaredMethods();

      // create an object of the Method class
      for (Method m : methods) {

        // get names of methods
        System.out.println("Method Name: " + m.getName());

        // get the access modifier of methods
        int modifier = m.getModifiers();
        System.out.println("Modifier: " + Modifier.toString(modifier));

        // get the return types of method
        System.out.println("Return Types: " + m.getReturnType());
        System.out.println(" ");
      }
    }
   
    catch (Exception e) {
      e.printStackTrace();
    }
  }
}
