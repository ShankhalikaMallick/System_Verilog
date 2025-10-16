// module to show different operations on of associative array 

module associative_array_functions;
  int index;
  int val;
  
  initial begin
    // array declarations
    int a1[*];			// array of integer type of undefined index
    bit [7:0]a2[string];	// array of 8-bits of string index 
    int a3[bit[7:0]];		// array of integer type of 8-bit index bit[7:0]

    // initialising values of a1
    repeat(6)
      begin
        a1[index]=index*10;
        index=index+4;
      end

    // initialising values of a2 and a3
    a2["red"]=1;
    a2["blue"]=4;
    a2["green"]=3;
    a3[100]=20;
    a3[101]=15;
    
    // operations of associative array
    $display("number of elements in a1=%0d", a1.num());			// size of a1: num operation
    
    a1.delete(8);												// delete operation
    foreach(a1[i])
      $display("value at index %0d is %0d",i,a1[i]);
    
    $display("index 12 exists in a1? %0d", a1.exists(12));	// exists operation
    
    a1.last(val);
    $display("last index is %0d",val );				// last index value  operation
    a1.first(val);
    $display("first index is %0d",val );				// first index value  operation
    a1.next(val);
    $display("next index after first is %0d",val );		// next index value  operation
    a1.prev(val);
    $display("previous index before is %0d",val );	// prev index value  operation
    
    foreach(a2[i])
      $display("value at index %0s is %0d",i,a2[i]);
    foreach(a3[i])
      $display("value at index %0d is %0d",i,a3[i]);
    
  end
endmodule


// output in EDAplayground

Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct 16 02:35 2025
number of elements in a1=6
value at index 0 is 0
value at index 4 is 40
value at index 12 is 120
value at index 16 is 160
value at index 20 is 200
index 12 exists in a1? 1
last index is 20
first index is 0
next index after first is 4
previous index before is 0
value at index blue is 4
value at index green is 3
value at index red is 1
value at index 100 is 20
value at index 101 is 15
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.470 seconds;       Data structure size:   0.0Mb
Thu Oct 16 02:35:43 2025
Done
