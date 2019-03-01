module clockounter(clkin, outled);

input clkin;
output outled;

reg logic_condition = 0;
wire led_condition;

integer counter = 0;

always@(posedge clkin)
begin
	counter = counter + 1;
	if(counter >= 25000000)
		if(logic_condition == 0) begin
			logic_condition <= 1;
			counter <= 0;
		end
		
		else if(logic_condition == 1) begin
			logic_condition <= 0;
			counter <= 0;
		end
	end
	
assign led_condition = logic_condition;
assign outled = led_condition;
endmodule