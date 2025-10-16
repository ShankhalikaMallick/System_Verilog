
// output obtained in EDAplaygroud

CPU time: .432 seconds to compile + .470 seconds to elab + .400 seconds to link
Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct 16 08:44 2025
size of q1=3
1
2
3
size of q2=4
1
2
3
4

 inserting value at 2nd location
size of q1=4
1
5
2
3

 deleting value at 3rd location
size of q1=3
1
5
3

 push_front operation for q1:unbounded queue
size of q1=4
9
1
5
3

 push_front operation for q2:bounded queue

Warning-[DT-HEBQD] Highest-numbered element of bounded queue deleted
testbench.sv, 45
  Addition of new element in bounded queue exceeded the queue's bound.
  It would cause deletion of highest-numbered element of queue.

size of q2=4
9
1
2
3

 push_back operation for q1:unbounded queue
size of q1=5
9
1
5
3
9

 push_back operation for q2:bounded queue

Warning-[DT-OOBBQ] Out of bound addition in bounded queue
testbench.sv, 59
  Addition of new element beyond the upper bound (4) of the queue shall be 
  ignored.
  Please make sure that the queue is not full or the index is within the 
  bounds of the queue.

size of q2=4
9
1
2
3

 pop_back operation for q1:unbounded queue
value of popped element=9
9
1
5
3

 pop_front operation for q1:unbounded queue
value of popped element=9
1
5
3
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.490 seconds;       Data structure size:   0.0Mb
Thu Oct 16 08:45:00 2025
Done
