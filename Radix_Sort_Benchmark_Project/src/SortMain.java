import java.util.ArrayList;
import java.util.Random;

/**
 * 
 */

/**
 * @author John M. Lasheski
 *
 */
public class SortMain {

  /**
   * @param args
   */
  public static void main(String[] args) {
    System.out.println("Hello John. Would you like to play a game of thermo-nuclear war?");
    
    Random randomGenerator = new Random();
    
    
    int[] list = new int[50];
    
    for(int i = 0; i < list.length; i++) {
      list[i] = randomGenerator.nextInt(100000);
    }
    
    
    
    SortInterface sort = new RadixSort();
    
    
    for(int i = 0; i < list.length; i++) {
      System.out.print(list[i] + " ");
    }
    
    System.out.println("\n");
    
    
    sort.recursiveSort(list);
    
    for(int i = 0; i < list.length; i++) {
      System.out.print(list[i] + " ");
    }
  }
}
