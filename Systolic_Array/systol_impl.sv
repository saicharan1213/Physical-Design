module systol(
    input logic [2:0][4:0]top,left,
    input clk,rst,
    output logic [2:0][29:0]c 
);
logic [4:0]right00,right01,right02,right10,right11,right12,right20,right21,right22;
logic [4:0]bottom00,bottom01,bottom02,bottom10,bottom11,bottom12,bottom20,bottom21,bottom22;
logic [3:0] cnt;
logic done;
    PE pe00(top[0],left[0],rst,clk,bottom00,right00,c[0][9:0]);
    PE pe01(top[1],right00,rst,clk,bottom01,right01,c[0][19:10]);
    PE pe02(top[2],right01,rst,clk,bottom02,right02,c[0][29:20]);

    PE pe10(bottom00,left[1],rst,clk,bottom10,right10,c[1][9:0]);
    PE pe11(bottom01,right10,rst,clk,bottom11,right11,c[1][19:10]);
    PE pe12(bottom02,right11,rst,clk,bottom12,right12,c[1][29:20]);

    PE pe20(bottom10,left[2],rst,clk,bottom20,right20,c[2][9:0]);
    PE pe21(bottom11,right20,rst,clk,bottom21,right21,c[2][19:10]);
    PE pe22(bottom12,right21,rst,clk,bottom22,right22,c[2][29:20]);

always@( posedge clk,posedge rst ) begin
if(rst) begin
    cnt<='b0;
    done<='b0;
end

else begin

    cnt<=cnt+1;
    if(cnt == 'd7)
        done<='b1;
    
    else
        done<='b0;
    
end

end
endmodule
