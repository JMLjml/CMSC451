import java.util.ArrayList;

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
    
    int[] list = {15, 12, 13, 9, 2};
    
    SortInterface sort = new RadixSort();
    
    
    for(int i = 0; i < list.length; i++) {
      System.out.print(list[i] + " ");
    }
    
    System.out.println();
    
    
    sort.iterativeSort(list);
    
    for(int i = 0; i < list.length; i++) {
      System.out.print(list[i] + " ");
    }
    
    
    
  }

}
