/**
 * SortMain.java
 * 
 * Driver program that calls and runs the BenchmarkSorts methods. Program
 * is used to test the effectiveness of a Radix Sort in this case. 
 */

/**
 * @author John M. Lasheski * 
 */
public class SortMain {

  public static void main(String[] args) {
    // Test Data set sizes to be used by the benchmark tools
    int[] sizes = {128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536};
    BenchmarkSorts benchmark = new BenchmarkSorts(sizes);
    
    // Run the sorts and display the results
    benchmark.runSorts();
    benchmark.displayReport();
  }
}
