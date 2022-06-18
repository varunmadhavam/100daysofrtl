module mux2X1(a,b,sel,c);
       input a,b,sel;
       output reg c;
       
       always @(*) 
              begin
                     c=a;
                     if(sel==1)
                            c=b;
              end
endmodule
