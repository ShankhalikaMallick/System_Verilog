//module to show two methods of resizing dynamic array
//overwriting method 
//extending current values


module dynamic_array_resize();
  int a[];
  bit [2:0]b[];
  
  initial
    begin
      // declaration
      a=new[3];
      b=new[4];
      
      //initialization
      a={1,2,3};
      foreach(b[i])
        b[i]=i;
      
      $display("size of a=%0d", a.size());
      foreach(a[i])
        $display("%0d", a[i]);
      
      $display("size of b=%0d", b.size()); 
      foreach(b[i])
        $display("%0d", b[i]);
      
      a=new[6]; // change size by overriding
      $display("size of a=%0d", a.size());
      foreach(a[i])
        $display("%0d", a[i]);
      
      b=new[6](b);
      $display("size of b=%0d", b.size());
      foreach(b[i])
        $display("%0d", b[i]);
      
    end
endmodule

// output obtained in EDAplayground
CPU time: .416 seconds to compile + .403 seconds to elab + .391 seconds to link
Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct 15 23:48 2025
size of a=3
1
2
3
size of b=4
0
1
2
3
size of a=6
0
0
0
0
0
0
size of b=6
0
1
2
3
0
0
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.420 seconds;       Data structure size:   0.0Mb
Wed Oct 15 23:48:49 2025
Done
