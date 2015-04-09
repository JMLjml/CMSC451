/**
 * UnsortedException.java
 * 
 * Simple exception class used by the benchmarkSorts class. Is thrown when a list
 * is unexpectedly unsorted.
 */

/**
 * @author John M. Lasheski
 *
 */
public class UnsortedException extends Exception {
  private static final long serialVersionUID = 1L;
  
  public UnsortedException(String msg) {
    super(msg);
  }
}
