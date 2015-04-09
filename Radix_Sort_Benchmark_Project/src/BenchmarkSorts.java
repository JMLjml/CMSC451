import java.util.Random;
import java.awt.GridLayout;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTable;

/**
 * BenchmarkSorts.java
 * 
 * A class designed to test sorting algorithms. Classes that implement the
 * SortInterface can be tested. Runs through iterative tests and recursive tests
 * and displays the results to a JTable. Test progress is also displayed to the 
 * console as the tests are running.
 */


/**
 * @author John M. Lasheski
 *
 */
public class BenchmarkSorts {
  private final int TESTCASES = 10; // How many test cases are being run
  private final int TRIALS = 50; // how many trials in each test case
  
  // arrays for storing testData and result data
  private int[] sizes;
  private int[][][] testData;
  private int[][] iterativeCountResults = new int[this.TESTCASES][this.TRIALS];
  private long[][] iterativeTimeResults = new long[this.TESTCASES][this.TRIALS];
  private int[][] recursiveCountResults = new int[this.TESTCASES][this.TRIALS];
  private long[][] recursiveTimeResults = new long[this.TESTCASES][this.TRIALS];
  private Object[][] stats = new Object[this.TESTCASES][9];
  
  // Constructor  
  public BenchmarkSorts(int[] sizes) {
    this.sizes = sizes;
    createTestData();
  }
  
  // Creates and Array of Random Lists of integers between 0 and 99999 to be sorted
  private void createTestData() {
    Random randomGenerator = new Random();
    
    this.testData = new int[this.TESTCASES][this.TRIALS][];
    
    // Use the sizes array to get the length for each set of test data
    for(int i = 0; i < this.TESTCASES; i++) {
      for(int j = 0; j < this.TRIALS; j++) {
        testData[i][j] = new int[this.sizes[i]];
        
        // Populate each test Array with some random numbers
        for(int k = 0; k < this.sizes[i]; k++) {
          testData[i][j][k] = randomGenerator.nextInt(100000);
        }        
      }
    } 
  }
  
    
  // Run the sorts and store the results in the array structures
  public void runSorts() {
    
    System.out.print("Starting Tests");
    
    for(int i = 0; i < this.TESTCASES; i++) {
      
      System.out.println("\nSorting Lists of size " + this.sizes[i] + ".");
      
      for(int j = 0; j < this.TRIALS; j++) {
        
        // Create a fresh RadixSort
        SortInterface sort = new RadixSort();
        
        // Clone the list we are sorting from the testData
        int[] list = (int[])testData[i][j].clone();
       
        // Iteratively sort the list
        sort.iterativeSort(list);
        
        // Store the Results
        this.iterativeCountResults[i][j] = sort.getCount();
        this.iterativeTimeResults[i][j] = sort.getTime();
        
        // Verify that the iterativeSort was successful        
        try {
          verifySorted(list);
        } catch (UnsortedException e) {
          // TODO Auto-generated catch block
          e.printStackTrace();
        }
        
        // Create a new RadixSort for running the recusiveSort Test
        sort = new RadixSort();
        
        // Clone the list we are sorting from the testData
        list = (int[])testData[i][j].clone();
        
        // Recursively sort the list
        sort.recursiveSort(list);
        
        // Store the results
        this.recursiveCountResults[i][j] = sort.getCount();
        this.recursiveTimeResults[i][j] = sort.getTime();
        
        // Verify that the recursiveSort was successful 
        try {
          verifySorted(list);
        } catch (UnsortedException e) {
          // TODO Auto-generated catch block
          e.printStackTrace();
        }
        
        // print a dot after each trial to show progress in the console window
        System.out.print("*");               
      }
    }
    
    System.out.println("\nTests Complete.");    
  }
  
  
  // Display the results of the tests in a JTable
  public void displayReport() {
    
    // Calculate the stats from the result data to be displayed
    calculateStats();
    
    String[] columnNames = {"N", "Mean Iterative Count", "Iterative Count Standard Deviation",
        "Mean Iterative Time", "Iterative Time Standard Deviation", "Mean Recursive Count", 
        "Recursive Count Standard Deviation", "Mean Recursive Time", "Recursive Time Standard Deviation"
    };
    
    JPanel jpanel = new JPanel(new GridLayout(1,0));
    
    final JTable table = new JTable(this.stats, columnNames);
    JScrollPane scrollpane = new JScrollPane(table);
    table.setFillsViewportHeight(true);
    
    jpanel.add(scrollpane);    
    jpanel.setOpaque(true);
    
    JFrame frame = new JFrame("Test Results");
    frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    frame.setContentPane(jpanel);
    
    frame.pack();
    frame.setVisible(true);    
  }
  
  /* Run through the supplied list and make sure it is sorted. Throw an unsorted
   * exception if not. */
  private void verifySorted(int[] list) throws UnsortedException {
    for(int i = 0; i < list.length - 1; i++) {
      if(list[i] > list[i+1]) {
        String errorMsg = "\nElements not Sorted Correctly.\n"
            + list[i] + " is not less than " + list[i+1] +".\n";
        
        throw new UnsortedException(errorMsg);
      }
    }
  }
  
  
  // Calculate the mean of a list
  private double mean(final int list[]) {
    double mean = 0.0;
    
    for(int i = 0; i < list.length; i++) {
      mean += list[i];
    }
    
    return mean / list.length;    
  }
  
  // Calculate the mean of a list
  private double mean(final long list[]) {
    double mean = 0.0;
    
    for(int i = 0; i < list.length; i++) {
      mean += list[i];
    }
    
    return mean / list.length;    
  }
  
  // Calculate the standardDeviation of a list
  private double standardDeviation(final int list[], final double mean) {
    double sum = 0.0;
    
    for(int i = 0; i < list.length; i++) {
      sum += Math.pow((list[i] - mean), 2);
    }
    
    sum = sum / list.length;
    
    return Math.sqrt(sum); 
  }
  
  // Calculate the standardDeviation of a list
  private double standardDeviation(final long list[], final double mean) {
    double sum = 0.0;
    
    for(int i = 0; i < list.length; i++) {
      sum += Math.pow((list[i] - mean), 2);
    }
    
    sum = sum / list.length;
    
    return Math.sqrt(sum);    
  }
  
  /* Run through each of the results arrays and calculate the stats for each trial.
   * Store the results in the stats array. */
  private void calculateStats() {
    for(int i = 0; i < this.TESTCASES; i++) {
      // Test Cases
      this.stats[i][0] = this.sizes[i];
      
      // Iterative Results
      this.stats[i][1] = mean(this.iterativeCountResults[i]);
      this.stats[i][2] = standardDeviation(this.iterativeCountResults[i], (double)this.stats[i][1]);
      this.stats[i][3] = mean(this.iterativeTimeResults[i]);
      this.stats[i][4] = standardDeviation(this.iterativeTimeResults[i], (double)this.stats[i][3]);
      
      // Recursive Results
      this.stats[i][5] = mean(this.recursiveCountResults[i]);
      this.stats[i][6] = standardDeviation(this.recursiveCountResults[i], (double)this.stats[i][5]);
      this.stats[i][7] = mean(this.recursiveTimeResults[i]);
      this.stats[i][8] = standardDeviation(this.recursiveTimeResults[i], (double)this.stats[i][7]);
    }    
  }
}
