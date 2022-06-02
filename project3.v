module full_adder(input a,input b,input c_in,output sum,output c_out);
assign sum=(a^b)^c_in;
assign c_out=(a&b)&c_in;
endmodule
module 8_bit_adder(input [7:0] a,input [7:0] b,input cin,output [7:0] sum,output cout);
full_adder d0(a[0],b[0],cin,z[0],cout);
full_adder d1(a[1],b[1],cout,z[1]);
full_adder d2(a[2],b[2],cout,z[2]);
full_adder d3(a[3],b[3],cout,z[3]);
full_adder d4(a[4],b[4],cout,z[4]);
full_adder d5(a[5],b[5],cout,z[5]);
full_adder d6(a[6],b[6],cout,z[6]);
full_adder d7(a[7],b[7],cout,z[7]);
endmodule