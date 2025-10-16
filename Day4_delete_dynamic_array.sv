// module to perform dynamic array deletion 

module delete_dynamic_array();
  //array declaration
  int a[];
  bit [2:0]b[];
  
  initial
    begin
      
      //size defining
      a=new[2];
      b=new[3];
      
      // array initialization
      a={0,1};
      b={4,5,6};
      
      $display("array components of a");
      foreach (a[i])
        $display("%0d",a[i]);
      
      $display("array components of b");
      foreach(b[i])
        $display("%0d",b[i]);
      
      a.delete();
      b.delete();
      $display("size of a=%0d",a.size());
      $display("size of b=%0d",b.size());
      
    end  
endmodule



// output generated in EDAplayground

Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct 15 23:23 2025
array components of a
0
1
array components of b
4
5
6
size of a=0
size of b=0
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.460 seconds;       Data structure size:   0.0Mb
Wed Oct 15 23:23:14 2025
Done
