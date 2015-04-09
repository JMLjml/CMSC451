/**
 * SortInterface.java
 * 
 * Simple interface for sorting classes. Used by the benchmarkSorts class to call
 * sorting methods for testing.
 */

/**
 * @author John M. Lasheski
 *
 */
public interface SortInterface {
  
  public int[] recursiveSort(int[] list);
  
  public int[] iterativeSort(int[] list);
  
  public int getCount();
  
  public long getTime();

}
