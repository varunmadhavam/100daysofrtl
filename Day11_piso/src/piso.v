module piso (clk,rst_n,ready_o,valid_i,valid_o,ready_i,p_i,s_o);
    input clk,rst_n,valid_i,ready_i;
    input [7:0] p_i;
    output valid_o,s_o,ready_o;

    reg ready_o,valid_o;
    reg[7:0] p,p_next;

    parameter state_idle=1'b0;
    parameter state_shift=1'b1;

    reg current_state,next_state;
    reg [2:0] count,count_next;

    always @(posedge clk,negedge rst_n) 
        begin
            if(!rst_n)
                current_state<=state_idle;
            else
                current_state<=next_state;
        end
    
    always @(*)
        begin
            case(current_state)
                state_idle:
                    if(ready_o&valid_i)
                        next_state=state_shift;
                    else
                        next_state=state_idle;
                state_shift:
                    if(count==7)
                        next_state=state_idle;
                    else
                        next_state=state_shift;
                default:
                    next_state=state_shift;
            endcase
        end
    
    always @(*)
        begin
            ready_o=0;
            valid_o=0;
            case(current_state)
                state_idle:
                    ready_o=1;
                state_shift:
                    valid_o=1;
            endcase
        end

    always @(posedge clk,negedge rst_n) 
        begin
            if(!rst_n)
                count<=0;
            else if(ready_o&valid_i)
                count<=0;
            else if(valid_o&ready_i)
                count<=count_next;
        end
    assign count_next=count+1;

    always @(posedge clk,negedge rst_n) 
        begin
            if(!rst_n)
                p<=0;
            else if(ready_o&valid_i)
                p<=p_i;
            else if(valid_o&ready_i)
                p<=p_next;
        end
    assign p_next={1'b0,p[7:1]};

    assign s_o=p[0];

endmodule