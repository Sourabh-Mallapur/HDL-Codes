module shift_reg_tb();

reg clk, reset;
reg [1:0] cntrl;
reg [3:0] d;
wire[3:0] q;

shift_reg uut(.clk(clk),.reset(reset),.cntrl(cntrl),.d(d),.q(q));

    initial begin
        
        clk = 0; d = 4'b0001;
        forever #5 clk = ~clk;
    end
        
    initial begin
    
        $dumpfile("shift.vcd");
        $dumpvars(0, shift_reg_tb);
        
        reset = 0;
        #10 cntrl = 2'b01;
        
        #30 cntrl = 2'b10;
        
        #30

    $finish;
    end

endmodule