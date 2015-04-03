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
  private int[][][] testData;
  
  public BenchmarkSorts(int[] sizes) {
    this.sizes = sizes;
    createTestData();
  }
  
  private void createTestData() {
    Random randomGenerator = new Random();
    
    this.testData = new int[10][50][];
    
    // Use the sizes array to get the length for each set of test data
    for(int i = 0; i < 10; i++) {
      for(int j = 0; j < 50; j++) {
        testData[i][j] = new int[this.sizes[i]];
        
        // Populate each test Array with some random numbers
        for(int k = 0; k < this.sizes[i]; k++) {
          testData[i][j][k] = randomGenerator.nextInt(100000);
        }
        
      }
    }
 
  }
  
  
  
  
  
  public void runSorts() {
    
    System.out.print("Starting Tests");
    
    
    for(int i = 0; i < this.sizes.length; i++) {
      
      System.out.println("\nSorting Lists of size " + this.sizes[i] + ".");
      
      for(int j = 0; j < 50; j++) {
        
        SortInterface sort = new RadixSort();
        
        int[] list = (int[])testData[i][j].clone();
        
//        for(int k = 0; k < list.length; k++) {
//          System.out.print(list[k] + " ");
//        }
        
        sort.iterativeSort(list);
        
      //  System.out.println("\n");
        
//        for(int k = 0; k < list.length; k++) {
//          System.out.print(list[k] + " ");
//        }
//        
//        System.out.println("\n");
        
        try {
          verifySorted(list);
        } catch (UnsortedException e) {
          // TODO Auto-generated catch block
          e.printStackTrace();
        }
        
        
        
        sort = new RadixSort();
        
        list = (int[])testData[i][j].clone();
//        
//        for(int k = 0; k < list.length; k++) {
//          System.out.print(list[k] + " ");
//        }
        
        sort.recursiveSort(list);
        
   //     System.out.println("\n");
//        
//        for(int k = 0; k < list.length; k++) {
//          System.out.print(list[k] + " ");
//        }
        
     //   System.out.println("\n");
        
        try {
          verifySorted(list);
        } catch (UnsortedException e) {
          // TODO Auto-generated catch block
          e.printStackTrace();
        }
        
        System.out.print("*");
        
               
      }
    }
    
    System.out.println("\nTests Complete.");
    
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
