module comparator(input [7:0]a, 
                          input [7:0]b, 
                          output equal, 
                          output greater, 
                          output less);
    assign equal = a == b;
    assign greater = a > b;
    assign less = a < b;

endmodule
module compare_tb;
reg [7:0]a;
reg [7:0]b;
wire p;
wire q;
wire r;
comparator UUT(.a(a),.b(b),.equal(p),.greater(q),.less(r));
initial begin
    a=100;
    b=100;
    #10;
    a=255;
    b=0;
    #10;
    a=51;
    b=122;
end
endmodule