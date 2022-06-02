module comparator(input a,input b,output greater,output equal,output less);
assign equal=~(a^b);
assign greater=a&~b;
assign less=~a&b;
endmodule
module comp_tb;
reg a,b;
wire greater,equal,less;
comparator d0(.a(a),.b(b),.greater(greater),.equal(equal),.less(less));
initial begin
    a=0;
    b=0;
    #5;
    a=0;
    b=1;
    #5;
    a=1;
    b=0;
    #5;
    a=1;
    b=1;
end
endmodule