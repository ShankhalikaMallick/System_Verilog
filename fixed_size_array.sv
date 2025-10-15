/*
code to implement working of fixed size arrays 
single dimensional array
multi-dimension(2d) array
uninitialised single dimensional array
*/

module fixed_size_array();
  int arr1[6];
  int arr2[5:0];
  int arr3[2:0][3:0];
  int arr4[4:0];
  int i;
  
  initial
    begin
      arr1='{1,2,3,4,5,6};
      arr2='{1,2,3,4,5,6};
      arr3='{'{1,2,3,4},'{5,6,7,8},'{9,10,11,12}};
      
      $display("DISPLAYING VALUES OF ARRAY 1");
      foreach(arr1[i])
        $display("value of array[%0d] is %0d",i,arr1[i]);
      
      $display("\n DISPLAYING VALUES OF ARRAY 2");
      foreach(arr2[i])
        $display("value of array[%0d] is %0d",i,arr2[i]);
      
      $display("\n DISPLAYING VALUES OF ARRAY 3");
      foreach(arr3[i,j])
        $display("value of array[%0d][%0d] is %0d",i,j,arr3[i][j]);
       
      $display("\n DISPLAYING VALUES OF ARRAY 4");
      foreach(arr4[i])
        $display("value of array[%0d] is %0d",i,arr4[i]);
    end
endmodule




// OUTPUT OBTAINED IN EDAPLAYGROUND:
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct 15 03:52 2025
DISPLAYING VALUES OF ARRAY 1
value of array[0] is 1
value of array[1] is 2
value of array[2] is 3
value of array[3] is 4
value of array[4] is 5
value of array[5] is 6

 DISPLAYING VALUES OF ARRAY 2
value of array[5] is 1
value of array[4] is 2
value of array[3] is 3
value of array[2] is 4
value of array[1] is 5
value of array[0] is 6

 DISPLAYING VALUES OF ARRAY 3
value of array[2][3] is 1
value of array[2][2] is 2
value of array[2][1] is 3
value of array[2][0] is 4
value of array[1][3] is 5
value of array[1][2] is 6
value of array[1][1] is 7
value of array[1][0] is 8
value of array[0][3] is 9
value of array[0][2] is 10
value of array[0][1] is 11
value of array[0][0] is 12

 DISPLAYING VALUES OF ARRAY 4
value of array[4] is 0
value of array[3] is 0
value of array[2] is 0
value of array[1] is 0
value of array[0] is 0
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.440 seconds;       Data structure size:   0.0Mb
Wed Oct 15 03:52:02 2025
Done
