/**
 * 
 */

/**
 * @author John M. Lasheski
 *
 */
public class SortMain {

  public static void main(String[] args) {
    int[] sizes = {128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536};
    BenchmarkSorts benchmark = new BenchmarkSorts(sizes);
    
    benchmark.runSorts();
    benchmark.displayReport();
  }
}
