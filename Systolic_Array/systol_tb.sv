
module systol_tb_driver;

logic [2:0][4:0]top,left;
logic clk,rst;
logic [2:0][29:0]c;


systol dut(top,left,clk,rst,c);




initial begin
	#3  top[0] <= 'd1;
	    left[0] <= 'd2;

	#10  top[0] <= 'd4;
	    left[0] <= 'd1;

	#10  top[0] <= 'd7;
	    left[0] <= 'd3;    
    
    #10 top[0] <= 'd0;
	    left[0] <= 'd0;
	#10 top[0] <= 'd0;
	    left[0] <= 'd0;
end

initial begin
	#3  top[1] <= 'd0;
	    left[1] <= 'd0;

	#10  top[1] <= 'd2;
	    left[1] <= 'd4;
    #10  top[1] <= 'd5;
	    left[1] <= 'd2; 
    #10  top[1] <= 'd8;
	    left[1] <= 'd6;
        
    #10    top[1] <= 'd0;
	    left[1] <= 'd0;  

end

initial begin
	#3  top[2] <= 'd0;
	    left[2] <= 'd0;
	#10 top[2] <= 'd0;
	    left[2] <= 'd0;

    #10  top[2] <= 'd3;
	    left[2] <= 'd5; 
    #10  top[2] <= 'd6;
	    left[2] <= 'd6; 
    #10  top[2] <= 'd9;
	    left[2] <= 'd7; 

end

initial begin
rst <= 1;
clk <= 0;
#3
rst <= 0;
end

initial begin
	repeat(21)
		#5 clk <= ~clk;
end








endmodule
