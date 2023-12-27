# System-Verilog-Codes
System Verilog Files from my class on "Computer Aided Digital Design".
These Codes are for a variety of topics and Testbench Codes are also included.

# I Want to run Them
- You can Easily run them on any HDL Simulation Program/Simulator
- EDA Playground is also a Good Option for a free online Simulator

## Note for Running Code on EDA Playground
if you want to observe the simulation graph you will need to include the following code into your testbench (on the Mentor Questa Simulation at least)
```
initial begin
  $dumpfile("dump.vcd");
  $dumpvars;
  #10000 $finish;
end
```
