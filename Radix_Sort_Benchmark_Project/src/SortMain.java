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
    
    int[] sizes = {100, 500, 1000, 5000, 10000, 25000, 50000, 100000, 250,000, 500000};
    
    BenchmarkSorts benchmark = new BenchmarkSorts(sizes);
    
    benchmark.runSorts();
    benchmark.displayReport();
    
  }
}
