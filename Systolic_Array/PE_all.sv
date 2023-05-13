module PE(input logic[4:0] top,left,
input reset,clk,
output logic[4:0] bottom,right,output logic[9:0]res);

logic[9:0] temp;

always@(*) begin
if(reset) begin
temp = 'b0;
end

else begin
temp = top*left;    
end

end


always@(posedge clk,posedge reset ) begin

if(reset) begin
    res <= 'b0;
    right<='b0;
    bottom<= 'b0;
end

else begin
    res <= res+temp;
    right <= left;
    bottom <= top;
end

end

endmodule
