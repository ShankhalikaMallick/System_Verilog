
//Dynamic Array Declaration, Allocation and Initialization.

module array_trial;
  
  // array declaration
  bit [7:0] d_arr1[];
  int d_arr2[];
  
  initial begin
    
    // display size before allocation
    $display("Before Memory Allocation");  
  	$display("size of array1 =%0d", d_arr1.size());
  	$display("size of array2 =%0d", d_arr2.size());
  	
  	//allocating space to array
  	d_arr1= new[4];
    d_arr2= new[6];
  	
  	// display size after allocation
    $display("After Memory Allocation");
  	$display("size of array1 =%0d", d_arr1.size());
  	$display("size of array2 =%0d", d_arr2.size());
    
     d_arr1 = {0,1,2,3};
    foreach(d_arr2[k])  
      d_arr2[k] = k;

    $display("array1 Values are ---");
    foreach(d_arr1[i])
      $display("\tarray1[%0d] = %0d",i, d_arr1[i]);
    $display("\n\n");

    $display("array2 Values are ---");
    foreach(d_arr2[j])
      $display("\t array2[%0d] = %0d",j, d_arr2[j]);
    $display("\n\n");
    
  end 
endmodule



// output in EDA playground


Before Memory Allocation
size of array1 =0
size of array2 =0
After Memory Allocation
size of array1 =4
size of array2 =6
array1 Values are ---
	array1[0] = 0
	array1[1] = 1
	array1[2] = 2
	array1[3] = 3



array2 Values are ---
	 array2[0] = 0
	 array2[1] = 1
	 array2[2] = 2
	 array2[3] = 3
	 array2[4] = 4
	 array2[5] = 5



           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.390 seconds;       Data structure size:   0.0Mb
Wed Oct 15 14:05:45 2025
Done
