module full_adder(input a,input b,
input c_in,output sum,output c_out)
assign sum=(a^b)^c_in;
assign out=(a&b)|(a&c_in)|(b&c_out);
endmodule
module fullad_tb;
reg a,b,c_in;
wire sum,c_out;
full_adder d0(.a(a),.b(b),.c_in(c_in),.sum(sum),.c_out(c_out));
initial begin
    a=1'b0
    b=1'b0
    c_in=1'b0
    #5
    a=1'b0
    b=1'b0
    c_in=1'b1
    #5
    a=1'b0
    b=1'b1
    c_in=1'b0
    #5
    a=1'b0
    b=1'b1
    c_in=1'b1
    #5
    a=1'b1
    b=1'b0
    c_in=1'b0
    #5
    a=1'b1
    b=1'b0
    c_in=1'b1
    #5
    a=1'b1
    b=1'b1
    c_in=1'b0
    #5
    a=1'b1
    b=1'b1
    c_in=1'b1
end
endmodule