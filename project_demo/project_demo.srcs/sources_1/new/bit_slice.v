module bit_slice(a,b,cin,s,gp,gg); 

    input [3:0] a,b;
    input cin; 
    output [3:0] s;
    output gp,gg;
    wire [3:0] p,g,c;
    pg i1(a,b,p,g);
    cla i2(p,g,cin,c,gp,gg);
    sum i3(a,b,c,s);

endmodule
    