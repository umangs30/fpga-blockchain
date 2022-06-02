module adder(input a,input b,output s,output cout);
assign s=a^b;
assign cout=a&b;
endmodule
module adder_tb;
reg a;
reg b;
wire sum;
wire cout;
adder d0(.a(a),.b(b), .s(sum), .cout(cout));
initial begin
  a=0;
  b=0;
  #5;
 a=1;
  b=0;
  #5;
  a=0;
  b=1;
  #5;
  a=1;
  b=1;
end
endmodule