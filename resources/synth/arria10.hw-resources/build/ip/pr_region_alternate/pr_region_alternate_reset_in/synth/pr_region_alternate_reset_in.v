// pr_region_alternate_reset_in.v

// Generated using ACDS version 17.1 240

`timescale 1 ps / 1 ps
module pr_region_alternate_reset_in (
		input  wire  clk,       //       clk.clk
		input  wire  in_reset,  //  in_reset.reset
		output wire  out_reset  // out_reset.reset
	);

	assign out_reset = in_reset;

endmodule
