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
    // TODO Auto-generated method stub
    return null;
  }

  @Override
  public int[] iterativeSort(int[] list) {
    int mask = 1;
    
    // Use a mask to iterate over each bit that we are looking at
    for(int i = 0; i < 4; i++) {
      
      // Advance the mask to look at the next bit
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
