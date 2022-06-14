module flop(a,b,c,d,clk);
	input b,d,clk;
	output reg a,c;
	always@(clk)
		begin
				a=b;
				c=d;
		end

endmodule
