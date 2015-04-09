import java.util.ArrayList;

/**
 * RadixSort.java
 * 
 * A class for implementing a RadixSort both iteratively, and recursively.
 * Implements the SortInterface so it can be called by the benchmarkSorts class.
 * 
 * Designed to be used on integer values between 0 and 99999. Was modeled to be 
 * able to sort zip codes.
 */

/**
 * @author John M. Lasheski
 *
 */
public class RadixSort implements SortInterface {
  
  // Bins for holding sorted binary values
  private ArrayList<Integer> bin0 = new ArrayList<Integer>();
  private ArrayList<Integer> bin1 = new ArrayList<Integer>();
  
  // Count the number of times we go through the sorting loop
  private int count = 0;
  
  // Used to determine how long a sort took
  private long startTime, stopTime;
  

  /* Implement the recursiveSort methods from the SortInterface. Calls a helper
   * recursiveSort function after the first pass. Sort from Most Significant Digit
   * to Least Significant Digit.
   * 
   * @see SortInterface#recursiveSort(int[])
   */     
  @Override
  public int[] recursiveSort(int[] list) {
    
    // Start the clock
    this.startTime = System.nanoTime();
    
    // MSB sort, so starting with a high mask and working down to 0
    int mask = 65536;
    
    // Run the first pass before calling recursively also increment count
    for(int i = 0; i < list.length; i++) {
      
      count++;
      
      /* Use the mask to look at each digit, if we get a 1 send the number to the
         bin1 ArrayList, otherwise send it to bin0. */
      if((mask & list[i]) == mask) {
        bin1.add(list[i]);
      } else {
        bin0.add(list[i]);
      }      
    }
    
    // Call recursively on each bin
    recursiveSort(bin0, mask);
    recursiveSort(bin1, mask);
    
    // Copy and combine the bins back to the list
    for(int k = 0; k < list.length; k++) {
      if(!bin0.isEmpty()) {
        list[k] = bin0.remove(0);
      } else {
        list[k] = bin1.remove(0);
      }
    }   
    
    // Stop the clock
    this.stopTime = System.nanoTime();
    
    return list;
  }
  
  
  private ArrayList<Integer> recursiveSort(ArrayList<Integer> list, int mask) {
    
    // Create local_bins for holding the sorted values
    ArrayList<Integer> local_bin0 = new ArrayList<Integer>();
    ArrayList<Integer> local_bin1 = new ArrayList<Integer>();
    
    // Base case, we have gone through each bit
    if(mask <= 0) {
      return list;
    }
    
    // Advance and look at the next Least Significant bit
    mask  = mask >> 1;
    
    // Run another sorting pass before calling recursively again
    // This is where we increment count
    for(int i = 0; i < list.size(); i++) {
      
      count++;
      
      /* Use the mask to look at each digit, if we get a 1 send the number to the
      bin1 ArrayList, otherwise send it to bin0. */
      if((mask & list.get(i)) == mask) {
        local_bin1.add(list.get(i));
      } else {
        local_bin0.add(list.get(i));
      }      
    }
    
    // Call recursively on each bin
    recursiveSort(local_bin0, mask);
    recursiveSort(local_bin1, mask);
    
    // Copy and combine the bins back to the list
    for(int k = 0; k < list.size(); k++) {
      if(!local_bin0.isEmpty()) {
        list.set(k, local_bin0.remove(0));
      } else {
        list.set(k, local_bin1.remove(0));
      }
    }   
    
    return list;
  }
  

  /* Implements the interetiveSort method from the SortInterface. Uses a mask
   * to look at each bit and sort it into the correct bin before recombining into 
   * a single list.
   * (non-Javadoc)
   * @see SortInterface#iterativeSort(int[])
   */
  @Override
  public int[] iterativeSort(int[] list) {
    
    // Start the clock
    this.startTime = System.nanoTime();
    
    int mask = 1;
    
    // Use a mask to iterate over each bit that we are looking at
    for(int i = 0; i < 17; i++) {
      
      // Increment the Mask each time we run through the for loop 
      if(i != 0) {
        mask = mask << 1;
      }
            
      // Iterate over each element of the list
      // This is where we update count to reflect that we are looking at each
      // list element again
      
      for(int j = 0; j < list.length; j++) {
        
        count++; // increment the count for each element visited
        
        // Use the mask to select the correct bin
        if((mask & list[j]) == mask) {
          bin1.add(list[j]);
        } else {
          bin0.add(list[j]);
        }
      }
      
      // Copy the bins back to the list
      for(int k = 0; k < list.length; k++) {
        if(!bin0.isEmpty()) {
          list[k] = bin0.remove(0);
        } else {
          list[k] = bin1.remove(0);
        }
      }
    }
    
    // Stop the clock
    this.stopTime = System.nanoTime();
       
    return list;
  }

  @Override
  public int getCount() {
    return count;
  }

  @Override
  public long getTime() {
    return this.stopTime - this.startTime;
  }
}
