module mux2X1(a,b,sel,c);
       input a,b,sel;
       output reg c;
       
       always @(*) 
              begin
                     c=a;
                     if(sel==1)
                            c=b;
              end
       initial 
              begin
                     $dumpfile("mux2X1.vcd");
                     $dumpvars(0,mux2X1);
              end
endmodule
