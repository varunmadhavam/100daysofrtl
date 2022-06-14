module project_template(a,b,c);
       input a,b;
       output c;
       assign c=a|b;
       initial 
              begin
                     $dumpfile("project_template.vcd");
                     $dumpvars(0,project_template);
              end
endmodule
