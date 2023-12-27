module sign_adder #(parameter N = 4)
    (input wire [N-1:0] a, b, output reg [N-1:0] sum);

reg [N-1:0] mag_a, mag_b, max, min;
reg sign_a, sign_b, sign_sum;

always @(*)
    begin    
    mag_a = a[N-2:0];
    mag_b = b[N-2:0];

    sign_a = a[N-1]; 
    sign_b = b[N-1];

    if (mag_a > mag_b)
        begin
            max = mag_a;
            min = mag_b;
            sign_sum = sign_a;
        end
    else
        begin
            max = mag_b;
            min = mag_a;
            sign_sum = sign_b;
        end

    if (sign_a == sign_b) begin
        sum[N-2:0] = max + min;
        end
    else begin
        sum[N-2:0] = max - min;
        end
  
    sum[N-1:0] = {sign_sum, sum[N-2:0]};
    
    end  
endmodule
