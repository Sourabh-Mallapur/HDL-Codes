module divideby3(input logic clk, input logic reset, output logic y);

typedef enum logic [1:0] {s0,s1,s2} statetype;
statetype state, nextstate;

//state register
always_ff @( posedge clk, posedge reset )
    if (reset) state <= s0;
    else state <= nextstate;

//next state logic
always_comb
    case(state)
        s0 : nextstate = s1;
        s1 : nextstate = s2;
        s2 : nextstate = s3;
    endcase

//output logic
assign y = (state == s0);

endmodule
 
// for one hot encoding
// typedef enum logic [2:0] { s0 = 3'b001, s1 = 3'b 010, s2 = 3'b100 } statetype;