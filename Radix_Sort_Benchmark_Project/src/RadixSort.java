import java.util.ArrayList;
import java.util.Vector;

/**
 * 
 */

/**
 * @author John M. Lasheski
 *
 */
public class RadixSort implements SortInterface {
  private ArrayList<Integer> bin0 = new ArrayList<Integer>();
  private ArrayList<Integer> bin1 = new ArrayList<Integer>();

  @Override
  public int[] recursiveSort(int[] list) {
    
    // MSB sort, so starting with a high mask and working down to 0
    int mask = 65536;
    
    // Run the first pass before calling recursively
    for(int i = 0; i < list.length; i++) {
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
    for(int i = 0; i < list.size(); i++) {
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
  

  @Override
  public int[] iterativeSort(int[] list) {
    int mask = 1;
    
    // Use a mask to iterate over each bit that we are looking at
    for(int i = 0; i < 17; i++) {
      
      if(i != 0) {
        mask = mask << 1;
      }
      
      System.out.println("Mask = " + mask);
      
      // Iterate over each element of the list
      for(int j = 0; j < list.length; j++) {
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
       
    return list;
  }

  @Override
  public int getCount() {
    // TODO Auto-generated method stub
    return 0;
  }

  @Override
  public long getTime() {
    // TODO Auto-generated method stub
    return 0;
  }

}
