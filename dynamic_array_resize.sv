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
