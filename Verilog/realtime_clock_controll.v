module rtc ( 
	input clock,
	input reset,
	input event_trigger,
	// this is for the avalon interface
	input [15:0] avalon_slave_address,
	input avalon_slave_write,
	input signed [31:0] avalon_slave_writedata,
	input avalon_slave_read,
	output signed [31:0] avalon_slave_readdata,
	output avalon_slave_waitrequest
);
	
	//definition
	parameter CLOCK_SPEED_HZ = 50_000_000; //-> 20ns per cloc  ->so the rsolution was choosen 100ns
	parameter RTC_RESOLUTION = 100;//-> 20ns per cloc  ->so the rsolution was choosen 100ns
	
   //reg def
	reg [31:0] time_cnt;
	reg [31:0] rtc_trigger_data;
	
	reg [31:0] US_output_time;
	reg [31:0] US_out_trigger;
	
	reg avalon_slave_waitFlag;
	reg [31:0] returnvalue;
	
	//wires
	wire clock_div;
	
	//assign reg	
	assign avalon_slave_readdata = returnvalue;
	assign avalon_slave_waitrequest = (avalon_slave_waitFlag && avalon_slave_read);
	
	
	//ext moduls
	clock_divider cd1(clock, reset, clock_div);
	//US_time_sync_ctl US_time1();	//US out put start time sync	
	
	//RTC count process
	/*always @(posedge clock, posedge reset) begin: RTC_COUNT //clock_div to count every 100ns
		if (reset == 1) begin
			//time_cnt <= time_cnt + 32'd1; 
		end else begin
			time_cnt <= time_cnt + 32'd1; 
			if (time_cnt == 4294967295) begin
				time_cnt <= 32'd0;
			end
		end
	end*/
	
	  
	// the following iterface handles read requests via lightweight axi bridge
	// the upper 8 bit of the read address define which value we want to read
	// the lower 8 bit of the read address define for which motor	
	always @(posedge clock, posedge reset) begin: AVALON_READ_INTERFACE
		if (reset == 1) begin
			avalon_slave_waitFlag <= 1;
		end else begin
			avalon_slave_waitFlag <= 1;
			if(avalon_slave_read) begin
				case(avalon_slave_address>>8)
					8'h00: returnvalue <= time_cnt[31:0];
					8'h01: returnvalue <= rtc_trigger_data[31:0];
					default: returnvalue <= 32'hDEADBEEF;
				endcase
				if(avalon_slave_waitFlag==1) begin // next clock cycle the returnvalue should be ready
					avalon_slave_waitFlag <= 0;
				end
			end
		end
	end
	
	always @(posedge clock, posedge reset) begin: AVALON_WRITE_INTERFACE
		if (reset == 1) begin
			//time_init <=0;
			time_cnt <= 0;
		end else begin
			// if we are writing via avalon bus and waitrequest is deasserted, write the respective register
			time_cnt <= time_cnt + 32'd1; 
			if (time_cnt == 4294967295) begin
				time_cnt <= 32'd0;
			end
			if(avalon_slave_write && ~avalon_slave_waitrequest) begin
				case(avalon_slave_address>>8)
					8'h00: time_cnt <= avalon_slave_writedata[31:0];
					8'h03: US_out_trigger <= avalon_slave_writedata[31:0];
				endcase
			end
		end 
	end
	
	always @(posedge event_trigger, posedge reset) begin: IO_time_trigger_in
		if (reset == 1) begin
			rtc_trigger_data <=0;
		end else begin
			rtc_trigger_data <= time_cnt;
		end
	end
	
	reg [31:0] wait_US_out_trigger;
	always @(posedge clock, posedge reset) begin: IO_time_trigger_out
		if (reset == 1) begin
			US_output_time <=0;
			wait_US_out_trigger <= 32'd0;
		end else begin
			if (US_out_trigger == 1) begin 
				if(wait_US_out_trigger <= 0) begin
					US_output_time <= time_cnt;
					//TODO enable US
					wait_US_out_trigger <= 32'd1;
				end else begin
					wait_US_out_trigger <= wait_US_out_trigger + 32'd1;
				end
				if(wait_US_out_trigger == 4294967295) begin
					wait_US_out_trigger <= 32'd0;
				end 
			end else begin
				wait_US_out_trigger <= 32'd0;
				//TODO disable US
			end 
		end
	end
endmodule

/*
module US_time_sync_ctl(
	input reset,
	input event_trigger,
	output time_data 
);
	reg out_time_reg;

	always @(posedge event_trigger, posedge reset) begin: IO_time_trigger
		if (reset) begin
			  out_time_reg <= 1'b0;
			  counter_up <= 32'd1;
		end else begin
			counter_up <= counter_up + 32'd1;
			if(counter_up == 5) begin	//50Mhz -> 20ns  => clock speed should be 100ns so  100/20 =5
				counter_up <= 32'd1;
				out_clock_reg <= ~out_clock_reg;
			end
		end
	assign out_clock = out_clock_reg;
endmodule

/*module clock_divider ( 
	input clock,
	input reset,
	output out_clock 
);
	reg out_clock_reg;
	reg [32:0] counter_up;

	always @(posedge clock)
		if (reset) begin
			  out_clock_reg <= 1'b0;
			  counter_up <= 32'd1;
		end else begin
			counter_up <= counter_up + 32'd1;
			if(counter_up == 5) begin	//50Mhz -> 20ns  => clock speed should be 100ns so  100/20 =5
				counter_up <= 32'd1;
				out_clock_reg <= ~out_clock_reg;
			end
		end
	assign out_clock = out_clock_reg;
endmodule
*/