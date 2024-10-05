module cla(input [3:0]a, b, input cin, output [3:0]s, output c4);
    wire [3:0]p, g; 
    wire c1, c2, c3;

    // Propagate and Generate logic
    assign p = a ^ b;  
    assign g = a & b;  

    // Carry logic
    assign c1 = g[0] | (p[0] & cin);
    assign c2 = g[1] | (p[1] & c1);
    assign c3 = g[2] | (p[2] & c2);
    assign c4 = g[3] | (p[3] & c3);

    // Sum logic
    assign s[0] = p[0] ^ cin;
    assign s[1] = p[1] ^ c1;
    assign s[2] = p[2] ^ c2;
    assign s[3] = p[3] ^ c3;

endmodule
