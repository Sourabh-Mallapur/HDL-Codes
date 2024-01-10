# HDL-Codes
A Repo of Verilog and System Verilog Codes for Common Circuits with Testbench and simulations for Quick and Easy Referencing

## System-Verilog-Codes
System Verilog Files from my class on "Computer Aided Digital Design".
These Codes are for a variety of topics and Testbench Codes are also included.

## I Want to run Them
- You can Easily run them on any HDL Simulation Program/Simulator
- EDA Playground is also a Good Option for a free online Simulator

### Note for Running Code on EDA Playground
if you want to observe the simulation graph you will need to include the following code into your testbench (on the Mentor Questa Simulation at least)
```
initial begin
  $dumpfile("dump.vcd");
  $dumpvars;
  #10000 $finish;
end
```

## Verilog Codes
System Verilog Files from my class on "Digital System Design".
These Codes are for a variety of topics and Testbench Codes are also included.

## How to run

add the following code to tesbench file (if not added)
```
initial begin
  $dumpfile("dump.vcd");
  $dumpvars(0, <top_module_in_testbench>);
  #10000 $finish;
end
```

Commands to run Simulation using Gtkwave (on Windows)
```
> iverilog .\Controller.v .\testbench.v
> vvp.exe .\a.out
> gtkwave.exe .\dump.vcd
```
