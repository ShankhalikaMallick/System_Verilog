// SYSTEM VERILOG CODE FOR TESTING ENUMERATION OPERATION

module enumeration_test;
  enum {red=5, blue, green=10, yellow, white, black} colours;
  
    initial
      begin
        colours=colours.first;
        for(int i=0;i<6;i++)
          begin
            $display("colour %0s has value %0d",colours.name, colours);
            colours=colours.next;
          end
      end
endmodule



// OUTPUT OBTAINED IN EDAPLAYGROUND:
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct 15 00:37 2025
colour red has value 5
colour blue has value 6
colour green has value 10
colour yellow has value 11
colour white has value 12
colour black has value 13
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.490 seconds;       Data structure size:   0.0Mb
Wed Oct 15 00:37:05 2025
Done
