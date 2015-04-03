import java.util.Random;

/**
 * 
 */



/**
 * @author John M. Lasheski
 *
 */
public class BenchmarkSorts {
  private int[] sizes;
  
  public BenchmarkSorts(int[] sizes) {
    this.sizes = sizes;    
  }
  
  public void runSorts() {
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
    
    try {
      verifySorted(list);
    } catch (UnsortedException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
    
  }
  
  public void displayReport() {
    
  }
  
  private void verifySorted(int[] list) throws UnsortedException {
    for(int i = 0; i < list.length - 1; i++) {
      if(list[i] > list[i+1]) {
        String errorMsg = "\nElements not Sorted Correctly.\n"
            + list[i] + " is not less than " + list[i+1] +".\n";
        
        throw new UnsortedException(errorMsg);
      }
    }
  }
  
  

}
