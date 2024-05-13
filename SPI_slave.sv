module SPI_slave(input logic SCLK, SS, MOSI, confirm,
						output reg MISO, output logic enabledSPI);
	
	logic confirm_state = 0;
	
	
	always_ff @ (posedge SCLK or negedge SS) begin
		
		MISO <= ~MOSI && SS && confirm_state;
		
	end
	
	always_ff @ (negedge confirm) begin
		confirm_state = ~confirm_state;
	end
	
	assign enabledSPI = confirm_state;
	
endmodule