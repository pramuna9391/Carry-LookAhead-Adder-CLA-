module cla_tb;
    reg [3:0] a;
    reg [3:0] b;
    reg cin;
    wire [3:0] s;
    wire c4;

    cla uut (
        .a(a), 
        .b(b), 
        .cin(cin), 
        .s(s), 
        .c4(c4)
    );

    initial begin

        a = 4'b0000;
        b = 4'b0000;
        cin = 0;
        #10 a = 4'b0110; b = 4'b0011; cin = 0;  
        #10 a = 4'b1110; b = 4'b1100; cin = 1;  
        #10 a = 4'b1010; b = 4'b0101; cin = 0;  
        #10 a = 4'b0011; b = 4'b0011; cin = 1; 
        #10 a = 4'b1111; b = 4'b0001; cin = 0; 
        #10 a = 4'b1111; b = 4'b1111; cin = 1; 
        #10 a = 4'b0000; b = 4'b0000; cin = 0; 
        #10 $finish;
    end
endmodule
