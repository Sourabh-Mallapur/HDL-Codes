// Priority Encoder Using Casez

module priorityencoder( input logic [3:0] a, output logic [3:0] y);
always_comb 
    casez (a)
        4'b1??? : y = 4'b1000; 
        4'b01?? : y = 4'b0100; 
        4'b001? : y = 4'b0010; 
        4'b0001 : y = 4'b0001; 
        4'b0000 : y = 4'b0000; 
    endcase
endmodule


// Testbench
module priorityencoder_tb();
logic [3:0] a;
logic y;
priorityencoder dut (a, y);
initial begin
    #10 a = 4'b0010;
    #10 a = 4'b0110;
    #10 a = 4'b0000;
    #10 a = 4'b1110;
    #10 a = 4'b0001;
    #10 $finish;
end
endmodule


// A priority encoder has 2^N inputs. It produces an N-bit binary output indicating the 
// most significant bit of the input that is TRUE, or 0 if none of the inputs are TRUE. It also 
// produces an output NONE that is TRUE if none of the inputs are TRUE. Design an 
// eight-input priority encoder with inputs A7:0 and outputs Y2:0 and NONE. For example, 
// if the input is 00100000, the output Y should be 101 and NONE should be 0. Write HDL 
// Program

module priority_encoder(input logic [7:0] a, output logic [2:0] y, output logic none);
always_comb
casez (a)
8'b00000000: begin y = 3'd0; none = 1'b1; end
8'b00000001: begin y = 3'd0; none = 1'b0; end
8'b0000001?: begin y = 3'd1; none = 1'b0; end
8'b000001??: begin y = 3'd2; none = 1'b0; end
8'b00001???: begin y = 3'd3; none = 1'b0; end
8'b0001????: begin y = 3'd4; none = 1'b0; end
8'b001?????: begin y = 3'd5; none = 1'b0; end
8'b01??????: begin y = 3'd6; none = 1'b0; end
8'b1???????: begin y = 3'd7; none = 1'b0; end
endcase
endmodule